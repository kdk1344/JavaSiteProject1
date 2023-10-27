package com.example.board02.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.board02.domain.dto.FileVO;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class FileController {
	
	@PostMapping(value="/upload", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody // �Ϲ� ��Ʈ�ѷ����� REST�� ����ؾ��� �� �ۼ�
	public ResponseEntity<List<FileVO>> upload(MultipartFile[] multipartFiles){
		log.info("upload.............");
		
		List<FileVO> files = new ArrayList<FileVO>();
		String uploadDirectory = "C:\\upload";
		String uploadDatePath = getDirectoryForm();
		
		File uploadPath = new File(uploadDirectory, uploadDatePath);
		log.info("upload path: " + uploadPath);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		for(MultipartFile multipartFile : multipartFiles) {
			log.info("--------------------");
			log.info("Upload File Name : " + multipartFile.getOriginalFilename());
			log.info("Upload File Size : " + multipartFile.getSize());
			
			FileVO fileVO = new FileVO();
			String originalFileName = multipartFile.getOriginalFilename();
			String fileName= null;
			
			
			UUID uuid = UUID.randomUUID();
			fileName = uuid.toString() + "_" + originalFileName;
			
			fileVO.setFileName(originalFileName);
			fileVO.setUuid(uuid.toString());
			fileVO.setUploadPath(uploadDatePath);
			
			try {
				File file = new File(uploadPath, fileName);
				multipartFile.transferTo(file);
				
				InputStream in = new FileInputStream(file);
				
				if(checkImageType(file)) {
					fileVO.setFileType(true);
					FileOutputStream out = new FileOutputStream(new File(uploadPath, "t_" + fileName));
					Thumbnailator.createThumbnail(in, out, 100, 100);
					in.close();
					out.close();
				}
				
				files.add(fileVO);
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return new ResponseEntity<List<FileVO>>(files, HttpStatus.OK);
		
	}
	
	private String getDirectoryForm() {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy\\MM\\dd");
		Date today = new Date();
		return simpleDateFormat.format(today);
	}
	
	private boolean checkImageType(File file) throws IOException{
		String contentType = Files.probeContentType(file.toPath());
		return contentType.startsWith("image");
	}
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> display(String fileName){
		log.info("file name : "+fileName);
		
		File file = new File("C:\\upload\\"+fileName);
		log.info("file: " +file);
		
		ResponseEntity<byte[]> result = null;
		
		HttpHeaders header = new HttpHeaders();
		try {
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@GetMapping(value="/download", produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> download(String fileName) {
		Resource resource = new FileSystemResource("C:/upload/" + fileName);
		
		if(!resource.exists()) {
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		HttpHeaders header = new HttpHeaders();
		String resourceName = resource.getFilename();
		resourceName = resourceName.substring(resourceName.indexOf("_")+1);
		
		try {
			header.add("Content-Disposition", "attachment; filename=" + new String(resourceName.getBytes("UTF-8"), "ISO-8859-1"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public String delete(@RequestParam("fileName") String fileName, @RequestParam("fileType") boolean fileType) {
		File file = null;
		try {
			file = new File("C:/upload/" + URLDecoder.decode(fileName, "UTF-8"));
			
			System.gc();
			System.runFinalization();
			
			file.delete();
			
			if(fileType) {
				file = new File(file.getPath().replace("t_", ""));
				file.delete();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "deleted";
	}
}

package com.naver.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.naver.utils.MediaUtils;
import com.naver.utils.UploadFileUtils;

@Controller
public class UploadController {
   @Resource(name = "uploadPath")
   private String uploadPath;

   @RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
   public void uploadForm() {

   }
   
   @RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
   public String uploadForm(MultipartHttpServletRequest request, Model model) throws Exception {
      MultipartFile file = request.getFile("file");

      UUID uid = UUID.randomUUID();
      String savedName = uid.toString() + "_" + file.getOriginalFilename();
   
      File target = new File(uploadPath, savedName);
      FileCopyUtils.copy(file.getBytes(), target);
      
      model.addAttribute("savedName", savedName);
      
      return "uploadResult";
   }
   
   
   
   @RequestMapping(value = "uploadajax", method = RequestMethod.GET)
   public void uploadajax() {
      
   }
   
   @RequestMapping(value = "uploadajax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
   @ResponseBody
   public String uploadajax(MultipartHttpServletRequest request) throws Exception {
      MultipartFile file = request.getFile("file");
      return UploadFileUtils.uploadFile(uploadPath, file);
   }
   
   @RequestMapping("display")
   @ResponseBody
   public ResponseEntity<byte[]> display(String filename) {   //ResponseEntity: 객체, 추가로 헤더 정보를 넣어줄 수 있다
       //한글인코딩, 원래 안해도 되어야하는데(web.xml에 인코딩작업 했기때문에) 오류같음 
       try { 
          filename = new String(filename.getBytes("8859_1"), "UTF-8"); 
       } 
       catch (Exception e1) {
          e1.printStackTrace(); 
       }
      ResponseEntity<byte[]> entity = null;
      InputStream in = null;
      try {
         System.out.println("filename?"+filename);
         in = new FileInputStream(uploadPath + filename);
         MediaType mType = MediaUtils.getMediaType(filename); 
         HttpHeaders headers = new HttpHeaders();
         if(mType != null) {
            headers.setContentType(mType);
         }else {   
            filename = filename.substring(filename.indexOf("_")+1);
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            headers.add("Content-Disposition", "attachmentp;filename=\"" + new String(filename.getBytes("UTF-8"), "ISO-8859-1"));   
         }
         entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
      } catch (Exception e) {
         e.printStackTrace();
         entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
      } finally {
            try {
               if(in != null) {
                  in.close();
               }
            } catch (IOException e2) {
               e2.printStackTrace();
            }
      }
      return entity;
   }

   //이미지파일 삭제
   @RequestMapping(value = "deletefile", method = RequestMethod.POST)
   @ResponseBody
   public String deletefile(String filename) {
      //UploadFileUtils의 makeThumbnail메서드에서 역슬래시를 슬래시로 replace해줬기 때문에 이를 다시 원래대로 돌려놔야함      
         filename = filename.replace('/', File.separatorChar);
         
         //이미지파일인지 아닌지 확인
         if(MediaUtils.getMediaType(filename) != null) {   //이미지파일임
            //원본 파일 이름 뽑아내기
            String prefix = filename.substring(0, 12);
            String suffix = filename.substring(14);
            File f0 = new File(uploadPath, prefix + suffix);
            if(f0.exists()) {
               f0.delete();
            }
         }
          
         File f = new File(uploadPath , filename);
         if (f.exists()) {
            f.delete();
         }
         
         return "삭제성공~ >_<b";
   }
   
   
   
}
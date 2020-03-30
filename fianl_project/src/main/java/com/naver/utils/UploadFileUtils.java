package com.naver.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadFileUtils {

   public static String uploadFile(String uploadPath, MultipartFile file) throws Exception {

      UUID uid = UUID.randomUUID();
      String savedName = uid.toString() + "_" + file.getOriginalFilename();

      String savedPath = calcPath(uploadPath);

      File target = new File(uploadPath + savedPath, savedName);

      FileCopyUtils.copy(file.getBytes(), target);

      String uploadFileName = null;

      if (MediaUtils.getMediaType(savedName) == null) {
         uploadFileName = makeIcon(uploadPath, savedPath, savedName);
      } else {
         uploadFileName = makeThumbnail(uploadPath, savedPath, savedName);
      }
      return uploadFileName;
   }

   private static String makeThumbnail(String uploadPath, String savedPath, String savedName) throws Exception {

      String name1 = uploadPath + savedPath + File.separator + "s_" + savedName; 

      BufferedImage sourceImg = ImageIO.read(new File(uploadPath + savedPath, savedName));
      BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_EXACT, 100);
      // Method.AUTOMATIC: 자동으로 가로세로 사이즈를 지정함
      // Mode.FIT_EXACT, 100: 썸네일이미지의 가로 세로가 100으로 고정됨

      File f = new File(name1);

      String formatName = savedName.substring(savedName.lastIndexOf(".") + 1);

      ImageIO.write(destImg, formatName.toUpperCase(), f);

      return name1.substring(uploadPath.length()).replace(File.separatorChar, '/');
   }

   private static String makeIcon(String uploadPath, String savedPath, String savedName) {

      String name = uploadPath + savedPath + File.separator + savedName;

      return name.substring(uploadPath.length()).replace(File.separatorChar, '/'); 

   }

   private static String calcPath(String uploadPath) {

      Calendar cal = Calendar.getInstance();

      String yearPath = File.separator + cal.get(Calendar.YEAR);

      int month = (cal.get(Calendar.MONTH) + 1);

      String monthPath = yearPath + File.separator + new DecimalFormat("00").format(month);

      int date = cal.get(Calendar.DATE);
      String datePath = monthPath + File.separator + new DecimalFormat("00").format(date);

      makeDir(uploadPath, yearPath, monthPath, datePath);

      return datePath;
   }

   private static void makeDir(String uploadPath, String... arr) {

      if (new File(uploadPath + arr[arr.length - 1]).exists()) {
         return;
      }
      for (String path : arr) {
         File f = new File(uploadPath + path);
         if (!f.exists()) {
            f.mkdir();
         }

      }

   }

}
package com.naver.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.naver.dto.ProductDTO;
import com.naver.dto.PageTO;
import com.naver.repository.ProductDAO;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
   @Inject
   private ProductDAO pdao;

   @Override
   public void insert(ProductDTO dto) {
      
      String[] filenames = dto.getFilenames();
      if (dto.getP_thumb() == null && filenames != null)
         dto.setP_thumb(filenames[0].substring(0, 12)+filenames[0].substring(14));
      pdao.insert(dto);
      int p_num = dto.getP_num();
      
      if(dto.getSizeArr() != null)
         for(String size : dto.getSizeArr())
            pdao.addsize(size, p_num);
      
      if(dto.getColorArr() != null)
         for(String color : dto.getColorArr())
            pdao.addcolor(color, p_num);
      
      if (filenames != null)
         for (String filename : filenames) {
            filename = filename.substring(0, 12)+filename.substring(14);
            pdao.addAttach(filename, p_num);
         }
   }

   @Override
   public PageTO list(PageTO to, String p_catecode) {
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("search", to.getSearch());
      map.put("p_catecode", p_catecode);
      int amount = pdao.getAmount(map);
      to.setAmount(amount);
      List<ProductDTO> list = pdao.list(to, map);
      to.setPlist(list);
      return to;
   }
   
   @Override
   public PageTO hotlist(PageTO to, boolean hotitem) {
	   Map<String, Object> map = new HashMap<String, Object>();
//	   int amount = pdao.getAmount(map);
//	      to.setAmount(amount);
	      
	      List<ProductDTO> list = pdao.hotlist(to ,hotitem);
	      to.setPlist(list);
	      return to;
   }
   
   
   @Override
   public ProductDTO read(String p_num) {
      pdao.updateReadcnt(p_num);

      ProductDTO dto = pdao.read(p_num);

      List<String> flist = pdao.getAttach(p_num);
      String[] filenames = flist.toArray(new String[flist.size()]);
      dto.setFilenames(filenames);

      List<String> slist = pdao.getsize(p_num);
      String[] sizeArr = slist.toArray(new String[slist.size()]);
      dto.setSizeArr(sizeArr);
      
      List<String> clist = pdao.getcolor(p_num);
      String[] colorArr = clist.toArray(new String[clist.size()]);
      dto.setColorArr(colorArr);
      return dto;
   }

   @Override
   public void delete(String p_num) {
      pdao.delete(p_num);
   }

   @Override
   public ProductDTO updateui(String p_num) {
      ProductDTO dto = pdao.updateui(p_num);
      List<String> list = pdao.getAttach(p_num);
      String[] filenames = list.toArray(new String[list.size()]);
      dto.setFilenames(filenames);
      return dto;
   }

   @Override
   public void deleteFile(int p_num, String filename) {
      pdao.deleteFile(p_num, filename);
   }

   @Override
   public void update(ProductDTO dto) {
      pdao.deleteAllFile(dto.getP_num());
      pdao.update(dto);
      String[] arr = dto.getFilenames();
      if (arr != null)
         for (String filename : arr) {
            pdao.addAttach(filename, dto.getP_num());
         }
   }




}
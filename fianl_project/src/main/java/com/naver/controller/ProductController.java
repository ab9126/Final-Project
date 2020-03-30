package com.naver.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naver.dto.ProductDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.naver.dto.PageTO;
import com.naver.service.ProductService;
import com.naver.utils.MediaUtils;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Inject
	private ProductService pservice;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping("/insert")
	public void insert() {
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ProductDTO dto) {
		pservice.insert(dto);
		
		return "redirect:/product/list";
	}
	
	/*
	 * @RequestMapping("/hotlist") public PageTO hotlist(HttpServletRequest request,
	 * PageTO to , boolean hotitem) { to = pservice.hotlist(to,hotitem);
	 * System.out.println(hotitem); request.setAttribute("plist", to.getPlist());
	 * System.out.println(to.getPlist().toString()); return to; }
	 */
	
	@RequestMapping("/list")
	public void list(Model model, PageTO to) {
		to = pservice.list(to, null);
		model.addAttribute("to", to);
	}

	@RequestMapping("/list/{cate}")
	public String list(@PathVariable("cate") String cate, Model model, PageTO to) {
		to = pservice.list(to, cate);
		model.addAttribute("to", to);
		return "/product/list";
	}

	@RequestMapping("/search/{search}")
	public String list(@PathVariable("search") String search, PageTO to, Model model) {
		try {
			search = new String(to.getSearch().getBytes("8859_1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
		}
		to.setSearch(search);
		to = pservice.list(to, null);
		model.addAttribute("to", to);
		return "/product/list";
	}

	@RequestMapping(value = "read/{p_num}", method = RequestMethod.GET)
	public String read(@PathVariable("p_num") String p_num, int curPage, Model model) throws JsonProcessingException {
		ProductDTO p_dto = pservice.read(p_num);
		ObjectMapper mapper = new ObjectMapper();
		String filenames = mapper.writeValueAsString(p_dto.getFilenames());
		model.addAttribute("filenames", filenames);
		model.addAttribute("p_dto", p_dto);
		model.addAttribute("curPage", curPage);
		return "product/read";
	}

	@RequestMapping("update/{p_num}")
	public String updateui(@PathVariable("p_num") String p_num, int curPage, Model model)
			throws JsonProcessingException {
		ProductDTO p_dto = pservice.updateui(p_num);
		ObjectMapper mapper = new ObjectMapper();
		String filenames = mapper.writeValueAsString(p_dto.getFilenames());
		model.addAttribute("filenames", filenames);
		model.addAttribute("p_dto", p_dto);
		model.addAttribute("curPage", curPage);
		return "product/update";
	}

	@RequestMapping(value = "update/{p_num}", method = RequestMethod.POST)
	public String update(Model model, ProductDTO dto, @RequestParam("curPage") int curPage) {
		pservice.update(dto);
		return "redirect:/product/read/" + dto.getP_num() + "?curPage=" + curPage;
	}

	@RequestMapping(value = "deletefile/{p_num}", method = RequestMethod.POST)
	@ResponseBody
	public String deletefile(@PathVariable("p_num") int p_num, String filename) {

		pservice.deleteFile(p_num, filename);

		filename = filename.replace('/', File.separatorChar);

		if (MediaUtils.getMediaType(filename) != null) {
			String prefix = filename.substring(0, 12);
			String suffix = filename.substring(14);

			File f0 = new File(uploadPath, prefix + suffix);
			if (f0.exists())
				f0.delete();

		}

		File f = new File(uploadPath, filename);
		if (f.exists())
			f.delete();

		return "success";
	}

	@RequestMapping("delete/{p_num}")
	public String delete(@PathVariable("p_num") String p_num, @RequestParam("curPage") int curPage) {
		pservice.delete(p_num);
		return "redirect:/product/list?curPage=" + curPage;
	}

}

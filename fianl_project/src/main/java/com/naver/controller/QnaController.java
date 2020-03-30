package com.naver.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.naver.dto.PageTO;
import com.naver.dto.QnaDTO;
import com.naver.dto.ReplyDTO;
import com.naver.service.QnaService;
import com.naver.utils.MediaUtils;

@Controller
@RequestMapping("/qna")
public class QnaController {
	@Inject
	private QnaService qservice;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@RequestMapping("/list")
	public void list(Model model, PageTO to) {
		to = qservice.list(to);

		model.addAttribute("to", to);
	}
	
	@RequestMapping("/search")
	public String search(String selectoption,String search, PageTO to, Model model) {
		try {
			search = new String(to.getSearch().getBytes("8859_1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
		}
		to = qservice.search(selectoption, to);
		
		model.addAttribute("to", to);
		
		return "/qna/list";
	}
	
	@RequestMapping("/insert")
	public void insert() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(Model model, QnaDTO qdto) {
		System.out.println("컨트롤러에서"+ qdto);
		qservice.insert(qdto);
		return "redirect:/qna/list";
	}
	
	@RequestMapping(value = "read/{q_num}", method = RequestMethod.GET)
	public String read(@PathVariable("q_num") int q_num, int curPage, Model model) throws JsonProcessingException {
		QnaDTO q_dto = qservice.read(q_num);
		
		ObjectMapper mapper = new ObjectMapper();
		String filenames = mapper.writeValueAsString(q_dto.getQ_filenames());
		
		String path = q_dto.getQ_thumb();
		model.addAttribute("path", path);
		
		
		model.addAttribute("filenames", filenames);
		model.addAttribute("q_dto", q_dto);
		model.addAttribute("curPage", curPage);
		return "qna/read";
	}

	@RequestMapping("/reply")
	public void reply(int q_num, int curPage, Model model) {
		model.addAttribute("q_num", q_num);
		model.addAttribute("curPage", curPage);
	}
	@RequestMapping(value = "/reply", method = RequestMethod.POST)
	public String reply(Model model, QnaDTO dto) {
		qservice.reply(dto);
		return "redirect:/qna/list";
	}
	
	
	@RequestMapping(value = "deletefile/{q_num}", method = RequestMethod.POST)
	@ResponseBody
	public String deletefile(@PathVariable("q_num") int q_num, String filename) {
		qservice.deleteFile(q_num, filename);
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

	@RequestMapping("delete")
	public String delete(int q_num,int curPage) {
		System.out.println("q_num? " + q_num);
		qservice.delete(q_num);
		return "redirect:/qna/list?curPage=" + curPage;
	}
	
	
	@RequestMapping(method = RequestMethod.PUT)
	@ResponseBody
	public String update(@RequestBody QnaDTO qdto) {
		qservice.update(qdto);
		return "success update";
	}
	
	
}

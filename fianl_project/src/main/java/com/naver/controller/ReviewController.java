
package com.naver.controller;

import javax.inject.Inject;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.naver.dto.PageTO;
import com.naver.dto.ReviewDTO;
import com.naver.service.ReviewService;

@RestController
@RequestMapping("review")
public class ReviewController {

	@Inject
	private ReviewService rservice;	

	@RequestMapping(value = "", method = RequestMethod.POST)
	public void insert(@RequestBody ReviewDTO dto) {
		rservice.insert(dto);
	}

	@RequestMapping(value = "{r_num}", method = RequestMethod.GET)
	public PageTO list(@PathVariable Integer r_num, PageTO to, Model model) {
		to = rservice.list(r_num, to);
		model.addAttribute("to", to);
		return to;
	}
	
	@RequestMapping(value = "{r_num}", method = RequestMethod.DELETE)
	public String delete(@PathVariable int r_num) {
		rservice.delete(r_num);
		return "delete success";
	}

}

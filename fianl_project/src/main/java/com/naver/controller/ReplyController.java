package com.naver.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.naver.dto.ReplyDTO;
import com.naver.service.ReplyService;

@RestController
@RequestMapping("replies")
public class ReplyController {
	
	@Inject
	private ReplyService rservice;
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public void insert(@RequestBody ReplyDTO rdto) {
		rservice.insert(rdto);
	}
	
	@RequestMapping(value = "{q_num}", method = RequestMethod.GET)
	public List<ReplyDTO> list(@PathVariable Integer q_num) {	//댓글 list
		List<ReplyDTO> list = rservice.list(q_num);
		return list;
	}
	
	@RequestMapping(value = "{r_num}", method = RequestMethod.DELETE)
	public String delete(@PathVariable int r_num) {	//JSON으로 보낸 데이터 형식을 확인해보면 , MAP 형태임(JSON 형태 자체가 Map 형태임 Key값 : Value값)
		System.out.println(r_num);
		rservice.delete(r_num);
		return "success delete";
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public String update(@RequestBody ReplyDTO rdto) {
		rservice.update(rdto);
		return "success update";
	}
}


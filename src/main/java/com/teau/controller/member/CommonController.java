package com.teau.controller.member;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.member.MemberVO;

@Controller
public class CommonController {
	// 멤버VO를 json으로 변환해서 넘겨주기 위해 사용(세션 넣는건 로그인컨트롤러에서, 세션 꺼내쓰는건 여기서 정의)
	@RequestMapping("/getMemberInfo.do")
	@ResponseBody
	public String getMemberInfo(HttpServletRequest request) throws JsonProcessingException{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		hashmap.put("member", member);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
		System.out.println(json);
		return json;
	}

}

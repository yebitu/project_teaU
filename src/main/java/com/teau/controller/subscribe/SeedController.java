package com.teau.controller.subscribe;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;

@Controller
public class SeedController {
	@Autowired
	@Qualifier("seedService")
	private SubService seedService;
	
	@Autowired
	private MemberService memberService;

	// 구독 등록
	@RequestMapping(value = "/insertSubSeed.do", produces = "application/json; charset=utf8")
	@ResponseBody // viewResolver로 넘어가는 것을 방지  //Model은 json타입으로 오는 정보들을 vo로 맞춰주기 위하여
	public String insertSub(@ModelAttribute SubVO vo, HttpServletRequest request) throws IOException {
		// 구독 구분을 위해 세션에서 멤버 객체 뽑아오기
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		if(member != null) {			
		member.setMemberSub("1");
		memberService.memberSub(member);	
		}		
		seedService.insertSub(vo);
		System.out.println("Controller 삽입");
		return "씨앗구독 신청이 완료되었습니다.";
	}

	// 구독 수정
	@RequestMapping(value = "/updateSubSeed.do", produces = "application/json; charset=utf8")
	@ResponseBody
	public String updateSub(@ModelAttribute SubVO vo) {
		System.out.println("구독 수정");
		seedService.updateSub(vo);
		return "씨앗구독 수정이 완료되었습니다.";
	}

	// 구독 해지
	@RequestMapping("/deleteSubSeed.do")
	public String deleteSub(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		// 1인 1구독 체크 해제
		member.setMemberSub("0");
		memberService.memberSub(member);
		
		SubVO vo = new SubVO();
		vo.setSubUser(member.getMemberId());
		System.out.println(member.getMemberId());
		seedService.deleteSub(vo);
		return "redirect:mypage.do";
	}

	// 구독 정보 조회
	@RequestMapping("/getSubSeed.do")
	public String getSub() {
		return "redirect:mypage.do";
	}

}

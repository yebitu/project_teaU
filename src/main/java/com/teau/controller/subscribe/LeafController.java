package com.teau.controller.subscribe;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;
import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;

@Controller
public class LeafController {
	
	@Autowired
	@Qualifier("leafService")
	private SubService leafService;
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="/insertSubLeaf.do", produces = "application/text; charset=utf8")
	@ResponseBody // viewResolver로 넘어가는 것을 방지 // Model은 json타입으로 오는 정보들을 vo로 맞춰주기 위히여
	public String insertSub(@ModelAttribute SubVO vo, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		if(member != null) {			
			member.setMemberSub("1");
	    	memberService.memberSub(member);
			}
		System.out.println(vo.getSubId());
		leafService.insertSub(vo);
		return "구독 신청이 완료되었습니다.";
	}
	
	@RequestMapping(value="/updateSubLeaf.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String updateSub(@ModelAttribute SubVO vo) {
		
		leafService.updateSub(vo);
		return "구독 신청이 수정되었습니다.";
	}
	
	@RequestMapping("/deleteSubLeaf.do")
	public String deleteSub(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		// 1인 1구독 체크 해제
		member.setMemberSub("0");
		memberService.memberSub(member);
		
		SubVO vo = new SubVO();
		vo.setSubUser(member.getMemberId());
		System.out.println(member.getMemberId());
		leafService.deleteSub(vo);
		memberService.memberSub(member);
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/getSubLeaf.do")
	public String getSub() {
		return "redirect:mypage.do";
	}
	
//	@RequestMapping("/getSubListLeaf.do")
//	public String getSubList(@RequestParam("slUser") String slUser, Model model) {
//		SubVO vo = new SubVO();
//		vo.setUser(slUser);
//		model.addAttribute("subLeafList", leafService.getSubList(vo));
//		System.out.println(leafService.getSubList(vo));
//		return "redirect:mypage.do";
//	}
	
}

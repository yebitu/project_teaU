package com.teau.controller.subscribe;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;
//import com.teau.biz.subscribe.SubTreeService;
import com.teau.biz.subscribe.SubTeaVO;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.subscribe.impl.TreeServiceImpl;

@Controller
public class TreeController {
	@Autowired
	@Qualifier("treeService")
	private TreeServiceImpl treeService;
	
	@Autowired
	private MemberService memberService;
	
    @RequestMapping(value="/insertSubTree.do", produces="application/json; charset=utf8")
	@ResponseBody // Viewresolver로 넘어가는 것을 막기 위해, json형태로 받음. 그래서 json형태로 받은 것을 modelAtrribute를 통해 vo객체에 담아준다-인서트하기 위해서
	
	public String insertSub(@ModelAttribute SubVO vo, Model model, HttpServletRequest request) throws IOException {
    	// 구독 구분을 위해 세션에서 멤버 객체 뽑아오기
    	HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		// 1인 1구독 체크
		if(member != null) {	
		member.setMemberSub("1");
		treeService.insertSub(vo);
    	memberService.memberSub(member);
		System.out.println("컨트롤러-나무 구독 저장");
		//ajax에 담아줄 data
		}
		return "나무 구독이 신청되었습니다.";
	}

	
    @RequestMapping(value="/updateSubTree.do", produces="application/json; charset=utf8")
    @ResponseBody
    public String updateSub(SubVO vo) throws IOException{
		treeService.updateSub(vo);
		System.out.println("구독이 수정 되었습니다.");
		return "나무 구독이 수정되었습니다.";
		/* return "redirect:getSubTree.do"; */
	}
	
	@RequestMapping("/deleteSubTree.do")
	public String deleteSub(HttpServletRequest request) throws IOException{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		// 1인 1구독 체크 해제
		if(member != null) {			
			member.setMemberSub("0");
			memberService.memberSub(member);
			}
		
		SubVO vo = new SubVO();
		vo.setSubUser(member.getMemberId());
		System.out.println("현재 로그인 중인 멤버 아이디"+member.getMemberId());
		
		treeService.deleteSub(vo);
		// 구독 삭제 후 페이지(구독 창 없는 마이페이지?)
		//return "mypage";
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/getSubTree.do")
	public String getSub() throws IOException{
//		treeService.getSub(vo);
//		model.addAttribute("subTree", treeService.getSub(vo));
		return "redirect:mypage.do";
	}
	
	//나무 구독 데이터 조회
	@RequestMapping("/getTeaList.do")
	
	public String getTeaList(HttpServletRequest request, Model model) {
		System.out.println("나무 차 목록 출력 처리");
		List<SubTeaVO> list = treeService.getTeaList();
//		for(SubTeaVO tea : list) {
//			System.out.println(tea.toString());
//		}
		HttpSession session = request.getSession();
//		MemberVO member = (MemberVO)session.getAttribute("member");	
		// "member"은 나중에 필요시 "user"로 바꿔서 넘겨줘도 ok
		model.addAttribute("teaList", list);
//		model.addAttribute("member", member);
//		System.out.println("현재 로그인 중인 멤버 아이디"+(member.getMemberId()));
		
		return "subscribe_tree";
	}

	

}

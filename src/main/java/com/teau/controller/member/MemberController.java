package com.teau.controller.member;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;
import com.teau.biz.member.PageMakerM;

@Controller

public class MemberController {

	@Autowired
	MemberService memberService;

	// 회원가입페이지

	// 회원가입 화면으로 이동
	@RequestMapping("/join.do")
	public String join() {
//		return "WEB-INF/JSP/signup.jsp";
		return "join";
	}


	// 회원가입 기능처리
	@RequestMapping("/insertMember.do")
	public String insertMember(MemberVO vo, Model model) throws IOException {

		int result = memberService.memberIdcheck2(vo);

		if (result == 0) {
			System.out.println("insertMember");
			memberService.insertMember(vo);
			return "login";
		} else {
			model.addAttribute("msg", "중복된 아이디입니다");
			return "join";
		}

	}

	// 마이페이지 회원정보 화면
	@RequestMapping(value = "/mypage_edit.do")
	public String mypageEdit(HttpServletRequest request, Model model) throws Exception {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("member");
		System.out.println(member);
		if (member != null) {
			System.out.println(member.getMemberId());
		}
		model.addAttribute("member", member);
		return "mypage_edit";
	}

	// 회원 수정
	@RequestMapping("/updateMember.do")
	public String updateMember(MemberVO vo, Model model, HttpSession session) {
		System.out.println("updateMember");
		System.out.println("updateMember");
		System.out.println("memberName :" + vo.getMemberName());
		System.out.println("memberAddress :" + vo.getMemberAddress());
		System.out.println("memberEmail :" + vo.getMemberEmail());
		System.out.println("memberPass :" + vo.getMemberPass());
		System.out.println("memberPhone :" + vo.getMemberPhone());

		// 추가
		session.setAttribute("member", vo);
		memberService.updateMember(vo);
		return "redirect:mypage.do";
	}

	// 관리자 권한 부여
	@RequestMapping("/updateAdmin.do")
	public String updateAdmin(MemberVO vo, Model model, HttpSession session) {
		System.out.println("updateAdmin");
		System.out.println("memberId :" + vo.getMemberId());
		System.out.println("memberName :" + vo.getMemberName());
		System.out.println("memberEmail :" + vo.getMemberEmail());
		System.out.println("memberRole :" + vo.getMemberRole());

		// 추가
		session.setAttribute("member", vo);
		memberService.updateAdmin(vo);
		return "redirect:/member_management";
	}

	// 관리자 화면 이동
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin";
	}

	// 회원 목록 조회
	@RequestMapping("/getMemberList.do")
	public String getMemberList(MemberVO vo, Model model) {
		// List<BoardVO> boardList = boardService.getMemberList(cri);
		System.out.println("멤버 조회 처리");

		int total = memberService.totalCnt();

		// Model 정보 저장
		model.addAttribute("pagingM", new PageMakerM(vo, total));
		model.addAttribute("memberList", memberService.getMemberList(vo));
		return "member_management";
	}

	// 비밀번호 찾기

	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public void findPwGET() throws Exception {
		System.out.println("findPwGET 작동");
	}

	@ResponseBody
	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public void findPwPOST(@RequestParam Map<String, String> paramMap, HttpServletResponse response) throws Exception {
		System.out.println("findPwPOST 작동");
		System.out.println(paramMap.get("memberId"));
		MemberVO member = new MemberVO();
		member.setMemberId(paramMap.get("memberId"));
		member.setMemberEmail(paramMap.get("memberEmail"));
		memberService.findPw(response, member);
	}

	/*
	 * // 마이페이지 - 회원정보 받아오기
	 * 
	 * @RequestMapping("/getMember.do") public String
	 * getMember(@RequestParam("memberId") String id, Model model) throws
	 * IOException {
	 * 
	 * MemberVO vo = new MemberVO(); vo.setMemberId(id);
	 * System.out.println("getMember");
	 * 
	 * // MemberVO member = memberService.getMember(vo);
	 * 
	 * model.addAttribute("member", memberService.getMember(vo)); return
	 * "redirect:mypage.do"; }
	 * 
	 * //
	 * 
	 * @RequestMapping("/getMember1.do") public String getMember(MemberVO vo, Model
	 * model) { System.out.println("getMember"); MemberVO member =
	 * memberService.getMember(vo); model.addAttribute("member", member); return
	 * "myPage"; }
	 */

	/*
	 * // admin 관련추가
	 * 
	 * @RequestMapping("/updateAdmin.do") public String updateAdmin(MemberVO vo,
	 * Model model, HttpSession session) { System.out.println("updateAdmin");
	 * System.out.println("memberRole :" + vo.getMemberRole());
	 * 
	 * // 추가 session.setAttribute("member", vo);
	 * 
	 * memberService.updateAdmin(vo); return "redirect:getMemberList.do"; }
	 * 
	 * @RequestMapping("/admin.do") public String admin() { return "admin"; }
	 */

	/*
	 * @RequestMapping("/getMemberList.do") public String getMemberList(MemberVO vo,
	 * Model model) { // List<BoardVO> boardList = boardService.getBoardList(cri);
	 * System.out.println("멤버 목록 조회 처리");
	 * 
	 * int total = memberService.totalCnt();
	 * 
	 * // Model 정보 저장 model.addAttribute("pagingM", new PageMakerM(vo, total));
	 * model.addAttribute("memberList", memberService.getMemberList(vo)); return
	 * "member_management"; }
	 */

	/*
	 * @RequestMapping("/disableMember.do") public String
	 * disableMember(@RequestParam Map<String, String> disable) {
	 * memberService.disableMember(disable); return "member_management"; }
	 */

}

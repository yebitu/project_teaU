package com.teau.biz.member.impl;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOMybatis MemberDAO;
	
	public MemberServiceImpl() {
		
	}
	
	public void insertMember(MemberVO vo) {
		MemberDAO.insertMember(vo);

	}

	public void updateMember(MemberVO vo) {
		MemberDAO.updateMember(vo);

	}
	
	public void memberSub(MemberVO vo) {
		MemberDAO.MemberSub(vo);
	}

	public void deleteMember(MemberVO vo) {
		MemberDAO.deleteMember(vo);
	}

	public MemberVO getMember(MemberVO vo) {
		return MemberDAO.getMember(vo);
	}

	public int memberPasscheck(MemberVO vo) {
		int result = MemberDAO.memberPasscheck(vo);	
		return result;
	}
	
	public String memberIdcheck(String memberId) {
		return MemberDAO.memberIdcheck(memberId);
	}

	public int memberIdcheck2(MemberVO vo) {
		int result = MemberDAO.memberIdcheck2(vo);
		return result;
	}
	
	public void updateAdmin(MemberVO vo) {
		MemberDAO.updateAdmin(vo);
	}

	
	public List<MemberVO> getMemberList(MemberVO vo) {
		return MemberDAO.getMemberList(vo);
	}

	public int totalCnt() {
		return MemberDAO.totalCnt();
	}
	
	/*
	 * public int disableMember(Map<String, String> disable) { return
	 * MemberDAO.disableMember(disable); }
	 */
	
	// 비밀번호 찾기 이메일발송
	@Override
	public void sendEmail(MemberVO vo, String div) throws Exception {

		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; // 네이버 이용시 smtp.naver.com
		String hostSMTPid = "gogoacku@gmail.com"; // 서버 이메일 주소(보내는 사람 이메일 주소)
		String hostSMTPpwd = "teayou0908*"; // 서버 이메일 비번(보내는 사람 이메일 비번)

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "gogoacku@gmail.com"; // 보내는 사람 이메일주소(받는 사람 이메일에 표시됨)
		String fromName = "Teayou"; // 프로젝트이름 또는 보내는 사람 이름 String
		String subject = "";
		String msg = "";

		if (div.equals("findPw")) {
			subject = "티유 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getMemberId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getMemberPass() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = vo.getMemberEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); // 네이버 이용시 587, 지메일 465

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();

		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);

		}
	}

	// 비밀번호찾기
	@Override
	public void findPw(HttpServletResponse response, MemberVO vo) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		MemberVO ck = MemberDAO.readMember(vo.getMemberId());
		PrintWriter out = response.getWriter();

		// 가입된 아이디가 없으면
	
		  if(MemberDAO.memberIdcheck(vo.getMemberId()) == null) {
		  out.print("등록되지 않은 아이디입니다."); 
		  out.close(); }
		 
		// 가입된 이메일이 아니면
		/*
		 * else if(!vo.getMemberEmail().equals(ck.getMemberEmail())) {
		 * out.print("등록되지 않은 이메일입니다."); out.close();
		 */

		// 가입된 이메일이 아니면
		if (!vo.getMemberEmail().equals(ck.getMemberEmail())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		} else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setMemberPass(pw);
			// 비밀번호 변경
			MemberDAO.updatePw(vo);
			// 비밀번호 변경 메일 발송
			/* sendEmail(vo, "findpw"); */
			sendEmail(vo, "findPw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}

	// 회원정보보기
	@Override
	public MemberVO readMember(String Memberid) {
		System.out.println("S : readMember()실행");
		MemberVO vo = null;

		try {
			vo = MemberDAO.readMember(Memberid);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return vo;
	}


}


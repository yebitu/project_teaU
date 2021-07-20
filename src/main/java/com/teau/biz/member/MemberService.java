package com.teau.biz.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

public interface MemberService {

	// 기본이 public이라 생략 가능
	void insertMember(MemberVO vo);

	void updateMember(MemberVO vo);

	void deleteMember(MemberVO vo);

	MemberVO getMember(MemberVO vo);

	// 추가
	public int memberPasscheck(MemberVO vo);

	public String memberIdcheck(String memberId);

	public int memberIdcheck2(MemberVO vo);

	void memberSub(MemberVO vo);

	void updateAdmin(MemberVO vo);

	// 페이징 관련
	// 글 목록 조회
	List<MemberVO> getMemberList(MemberVO vo);

	// 글 갯수
	int totalCnt();

	/* int disableMember(Map<String, String> disable); */

	// 이메일발송
	public void sendEmail(MemberVO vo, String div) throws Exception;

	// 비밀번호찾기
	public void findPw(HttpServletResponse resp, MemberVO vo) throws Exception;

	// 회원정보 보기
	public MemberVO readMember(String id);
}

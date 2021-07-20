package com.teau.biz.member;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	//회원 아이디
	private String memberId;
	//비밀번호
	private String memberPass;
	//이름
	private String memberName;
	//이메일
	private String memberEmail;
    //휴대폰번호
	private String memberPhone;
//	private String memberZipcode;
	//주소
	private String memberAddress;
	//포인트
	private int memberPoint;
	//가입일
	private Date memberJoindate;
	//구독여부
	private String memberSub;
	// 관리자
	private String memberRole;
	// 페이징 관련
    private int pageNum = 1; //페이지 번호
    
    private int amount = 10; //페이지당 데이터 갯수


}

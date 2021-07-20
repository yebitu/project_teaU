package com.teau.biz.subscribe.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.subscribe.SubVO;

@Repository
public class SeedDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 구독등록
	public void insertSub(SubVO vo) {
		mybatis.insert("SubDAO.insertSub_seed", vo);
	}
	
	// 구독 수정
	public void updateSub(SubVO vo) {
		mybatis.update("SubDAO.updateSub_seed", vo);
	}
	
	// 구독 해제
	public void deleteSub(SubVO vo) {
		mybatis.delete("SubDAO.deleteSub_seed", vo);
	}
	
	// 구독 정보
	public SubVO getSub(SubVO vo) {
		return (SubVO) mybatis.selectOne("SubDAO.getSub_seed", vo);
	}
	

}

package com.teau.biz.subscribe.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.subscribe.SubVO;


@Repository 
public class LeafDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertSub(SubVO vo) {
		mybatis.insert("SubDAO.insertSub_leaf", vo);
	}
	
	public void updateSub(SubVO vo) {
		mybatis.update("SubDAO.updateSub_leaf", vo);
	}
	
	public void deleteSub(SubVO vo) {
		mybatis.delete("SubDAO.deleteSub_leaf", vo);
	}
	
	public SubVO getSub(SubVO vo) {
		return (SubVO) mybatis.selectOne("SubDAO.getSub_leaf", vo);
	}
	
	
	
}

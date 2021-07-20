package com.teau.biz.subscribe.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.subscribe.SubTeaVO;
import com.teau.biz.subscribe.SubVO;

@Repository
public class TreeDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// CRUD 기능
	// insert
	public void insertSub(SubVO vo) {
		System.out.println("===> Mybatis로  insertSub() 기능 처리");
		mybatis.insert("SubDAO.insertSub_tree", vo);
	}
	
	public void updateSub(SubVO vo) {
		System.out.println("===> Mybatis로  updateSub() 기능 처리");
		mybatis.update("SubDAO.updateSub_tree", vo);
	}
	
	public void deleteSub(SubVO vo) {
		System.out.println("===> Mybatis로  deleteSub() 기능 처리");
		mybatis.delete("SubDAO.deleteSub_tree", vo);
	}
	
	public SubVO getSub(SubVO vo) {
		System.out.println("===> Mybatis로  getSub() 기능 처리");
		return (SubVO) mybatis.selectOne("SubDAO.getSub_tree", vo);
	}
	
	public List<SubTeaVO> getTeaList() {
		System.out.println("===> Mybatis로  getTeaList() 기능 처리");
		return mybatis.selectList("SubDAO.getTeaList");
		
		
	}

}

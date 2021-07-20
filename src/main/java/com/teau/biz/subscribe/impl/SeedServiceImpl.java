package com.teau.biz.subscribe.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;

@Service("seedService")
public class SeedServiceImpl implements SubService{
	@Autowired
	private SeedDAOMybatis SeedDAO;
	
	// 초기화
	public SeedServiceImpl() {
	}
	
	public void insertSub(SubVO vo) {
		SeedDAO.insertSub(vo);
	}
	
	public void updateSub(SubVO vo) {
		SeedDAO.updateSub(vo);
	}
	
	public void deleteSub(SubVO vo) {
		SeedDAO.deleteSub(vo);
	}
	
	public SubVO getSub(SubVO vo) {
		return SeedDAO.getSub(vo);
	}
 
}

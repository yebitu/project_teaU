package com.teau.biz.subscribe.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubTeaVO;
import com.teau.biz.subscribe.SubVO;

@Service("leafService")//leafService//treeService
public class LeafServiceImpl implements SubService{
	@Autowired
	private LeafDAOMybatis LeafDAO;
	
	public LeafServiceImpl() {
		
	}

	public void insertSub(SubVO vo) {
		LeafDAO.insertSub(vo);
	}

	public void updateSub(SubVO vo) {
		LeafDAO.updateSub(vo);
	}

	public void deleteSub(SubVO vo) {
		LeafDAO.deleteSub(vo);
	}

	public SubVO getSub(SubVO vo) {
		return LeafDAO.getSub(vo);
	}

}

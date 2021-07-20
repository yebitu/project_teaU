package com.teau.biz.subscribe.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubTreeService;
import com.teau.biz.subscribe.SubTeaVO;
import com.teau.biz.subscribe.SubVO;

@Service("treeService")
public class TreeServiceImpl implements SubService{
	@Autowired
	private TreeDAOMybatis TreeDAO;
	
	public TreeServiceImpl() {
		
	}
	
	public void insertSub(SubVO vo) {
		TreeDAO.insertSub(vo);
	}
	
	public void updateSub(SubVO vo) {
		TreeDAO.updateSub(vo);
	}
	
	public void deleteSub(SubVO vo) {
		TreeDAO.deleteSub(vo);
	}
	
	public SubVO getSub(SubVO vo) {
		return TreeDAO.getSub(vo);
	}
	
	public List<SubTeaVO> getTeaList(){
		return TreeDAO.getTeaList();
	}
	
	
}

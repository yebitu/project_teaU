package com.teau.biz.subscribe;

import java.util.List;

public interface SubTreeService {
	void insertSub(SubVO vo);
	
	void updateSub(SubVO vo);
	
	void deleteSub(SubVO vo);
	
	SubVO getSub(SubVO vo);
	
	List<SubTeaVO> getTeaList();
	
}

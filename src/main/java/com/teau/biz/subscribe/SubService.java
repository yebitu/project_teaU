package com.teau.biz.subscribe;

import java.util.List;

public interface SubService {
	
	void insertSub(SubVO vo);
	
	void updateSub(SubVO vo);
	
	void deleteSub(SubVO vo);
	
	SubVO getSub(SubVO vo);
	
	// 나무 목록 추가용
//	List<SubTeaVO> getTeaList();

}

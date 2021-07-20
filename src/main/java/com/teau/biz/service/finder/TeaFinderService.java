package com.teau.biz.service.finder;

import java.util.List;

import com.teau.biz.shop.ShopVO;

public interface TeaFinderService {

	// 티파인더 결과 리스트
	List<ShopVO> getTeaFinderList(ShopVO vo);  
}

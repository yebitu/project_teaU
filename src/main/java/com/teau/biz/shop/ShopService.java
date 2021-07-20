package com.teau.biz.shop;

import java.util.List;

public interface ShopService {
	
	void insertShop(ShopVO vo, List<String> fileNames);
	
	void updateShop(ShopVO vo, List<String> fileNames);
	
	void deleteShop(ShopVO vo);
	
	ShopVO getShop(ShopVO vo);
	
	List<ShopVO> getImg(ShopVO vo);
	
	List<ShopVO> getShopList();
	
	
}

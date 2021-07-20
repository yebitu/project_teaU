package com.teau.biz.shop.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Service("shopService")
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDAOMybatis shopDAO;
	
	
	public void insertShop(ShopVO vo, List<String> fileNames) {
		shopDAO.insertShop(vo, fileNames);
	}

	public void updateShop(ShopVO vo, List<String> fileNames) {
		shopDAO.updateShop(vo, fileNames);
	}

	public void deleteShop(ShopVO vo) {
		shopDAO.deleteShop(vo);
	}

	public ShopVO getShop(ShopVO vo) {
		return shopDAO.getShop(vo);
	}

	public List<ShopVO> getShopList() {
		return shopDAO.getShopList();
	}

	public List<ShopVO> getImg(ShopVO vo) {
		return shopDAO.getImg(vo);
	}

}

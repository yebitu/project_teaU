package com.teau.biz.shop.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.shop.ShopVO;

@Repository
public class ShopDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertShop(ShopVO vo, List<String> fileNames) {
		mybatis.insert("ShopDAO.insertShop", vo);
		int teaId = mybatis.selectOne("ShopDAO.selectTeaId");
		for (int i = 0; i < fileNames.size(); i++) {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("teaId", teaId);
			paramMap.put("imgId", i); // imgId 기본 키로 추가 
			paramMap.put("teaImg", fileNames.get(i));
			
			mybatis.insert("ShopDAO.insertShopFile", paramMap);
		}
	}

	public void updateShop(ShopVO vo, List<String> fileNames) {
		mybatis.update("ShopDAO.updateShop", vo);
		int teaId = mybatis.selectOne("ShopDAO.selectTeaId");
		for (int i = 0; i < fileNames.size(); i++) {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("teaId", teaId);
			paramMap.put("imgId", i);
			paramMap.put("teaImg", fileNames.get(i));

			mybatis.update("ShopDAO.updateShopFile", paramMap);
		}
	}

	public void deleteShop(ShopVO vo) {
		mybatis.delete("ShopDAO.deleteShop", vo);
		mybatis.delete("ShopDAO.deleteShopFile", vo); 
	}

	public ShopVO getShop(ShopVO vo) {
		return (ShopVO) mybatis.selectOne("ShopDAO.getShop", vo);

	}

	public List<ShopVO> getShopList() {
		return mybatis.selectList("ShopDAO.getShopList");
	}

	public List<ShopVO> getImg(ShopVO vo) {
		return mybatis.selectList("ShopDAO.getImg", vo);
	}

}

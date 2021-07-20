package com.teau.biz.service.finder;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.shop.ShopVO;

@Repository
public class TeaFinderDAO {
	
    @Autowired
    private SqlSessionTemplate mybatis;
    
    // 티파인더 매핑
    public List<ShopVO> getTeaFinderList(ShopVO vo) {
        System.out.println("===> Mybatis로  getTeaFinderList() 기능 처리");
        return mybatis.selectList("TeaFinderDAO.getTeaFinderList", vo);
    }
}

package com.teau.biz.orders.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.orders.CartVO;

@Repository
public class CartDAO {

    @Autowired
    private SqlSessionTemplate mybatis;

    public void insertCart(CartVO vo) {
        mybatis.insert("CartDAO.insertCart", vo);
    }

    public void updateCart(CartVO vo) {
        mybatis.update("CartDAO.updateCart", vo);
    }

    public void deleteCart(CartVO vo) {
        mybatis.delete("CartDAO.deleteCart", vo);
    }
    
    public List<CartVO> getCartList(CartVO vo) {
        return mybatis.selectList("CartDAO.getCartList", vo);
    }

    
}

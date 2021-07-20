package com.teau.biz.orders.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.orders.CartService;
import com.teau.biz.orders.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
    
    @Autowired
    private CartDAO CartDAO;
    
    public CartServiceImpl() {
        
    }
    
    @Override
    public void insertCart(CartVO vo) {
        CartDAO.insertCart(vo);
    }
    
    public void updateCart(CartVO vo) {
        CartDAO.updateCart(vo);
    }
    
    public void deleteCart(CartVO vo) {
        CartDAO.deleteCart(vo);
    }
    
    public List<CartVO> getCartList(CartVO vo) {
        return CartDAO.getCartList(vo);
    }
}

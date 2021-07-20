package com.teau.biz.orders;

import java.util.List;

public interface CartService {

    void insertCart(CartVO vo);
    
    void updateCart(CartVO vo);

    void deleteCart(CartVO vo);
    
    List<CartVO> getCartList(CartVO vo);
}

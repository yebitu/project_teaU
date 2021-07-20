package com.teau.biz.orders.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.orders.OrdersVO;

@Repository
public class OrdersDAOMybatis {
   @Autowired
   private SqlSessionTemplate mybatis;
   

   // 상품 가져오기
   public List<OrdersVO> getOrdersList(OrdersVO vo) {
      System.out.println("mybatis로 TeaId 가져오기");
      return mybatis.selectList("OrdersDAO.getOrdersList", vo);
   }
   
   public void insertOrders(OrdersVO vo) {
      System.out.println("mybatis로 insertOrder 연결");
      mybatis.insert("OrdersDAO.insertOrders", vo);
   }
   
   
}
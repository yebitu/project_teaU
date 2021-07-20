package com.teau.biz.orders;

import java.util.List;

public interface OrdersService {
   
   List<OrdersVO> getOrdersList(OrdersVO vo);
   
   void insertOrders(OrdersVO vo);
}
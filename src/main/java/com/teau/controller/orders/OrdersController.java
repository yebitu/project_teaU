package com.teau.controller.orders;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.orders.CartService;
import com.teau.biz.orders.CartVO;
import com.teau.biz.orders.OrdersService;
import com.teau.biz.orders.OrdersVO;

@Controller
public class OrdersController {

   @Autowired
   private OrdersService ordersService;
   
   @Autowired
   private CartService cartService;
   
   @RequestMapping("/insertOrdersView.do")
   public String insertOrdersView(@RequestParam("memberId") String memberId,@RequestParam("totalPrice") int totalPrice, Model model)throws IOException{
     
	   System.out.println("insertOrdersView.do 확인");
      CartVO vo = new CartVO();
      vo.setMemberId(memberId);
      model.addAttribute("orders", cartService.getCartList(vo));
     
      return "orders";
   }

   
   // 주문 추가 기능 처리
   @RequestMapping(value="/insertOrders.do", produces="application/text; charset=utf8")
   @ResponseBody
   public String insertOrder(@RequestParam Map<String, String> paramMap, HttpServletRequest request) throws IOException{
	   System.out.println("insertOrders.do 실행");
	   OrdersVO ordersVO = new OrdersVO();
	   ordersVO.setMemberId(paramMap.get("memberId"));
	   ordersVO.setTeaId(Integer.parseInt(paramMap.get("teaId")));
	   ordersVO.setOrdersReceiver(paramMap.get("ordersReceiver"));
	   ordersVO.setOrdersPhone(paramMap.get("ordersPhone"));
	   ordersVO.setOrdersAddress(paramMap.get("ordersAddress"));
	   ordersVO.setOrdersTotal(Integer.parseInt(paramMap.get("ordersTotal")));
	   System.out.println("ordersVO="+ ordersVO);
	   
	   
	   
      System.out.println("주문 추가 성공");
      
      ordersService.insertOrders(ordersVO);
      return "redirect:mypage.do";
   }
   
	/*
	 * // 주문 페이지 이동2222
	 * 
	 * @RequestMapping("/insertOrdersCartView.do") public String
	 * insertOrdersView(CartVO vo ,@RequestParam("memberId") String memberId, Model
	 * model) throws IOException{ System.out.println("insertOrdersView.do 확인");
	 * 
	 * // 장바구니 리스트 표시 => OrdersVO => 장바구니VO로 바꿀것, 장바구니 매핑에 기존 orders get 매핑 참고하여
	 * 유사하게 추가하기 // 따라서 ordersService.get... => cartService.get... 으로 변경할 것
	 * vo.setMemberId(memberId); model.addAttribute("CartList",
	 * cartService.getCartList(vo)); System.out.println("주문 리스트 처리");
	 * 
	 * return "orders"; }
	 */
   
   
   
}
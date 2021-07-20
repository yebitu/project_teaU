package com.teau.controller.orders;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.teau.biz.member.MemberVO;
import com.teau.biz.orders.CartService;
import com.teau.biz.orders.CartVO;
import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class CartController {

   @Autowired
   private CartService cartService;

   @Autowired
   private ShopService shopService;
   
   

   // 로그인 시 DB 저장
   @RequestMapping(value = "/cartInsert.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String insertCart(@ModelAttribute CartVO vo) {
      cartService.insertCart(vo);
      return "장바구니에 상품을 담았습니다.";
   }

   // 비로그인 시 정보만 담아서
   @RequestMapping(value = "/cartInfo.do", produces = "application/text; charset=utf8")
   @ResponseBody
   public String cartInfo(ShopVO vo, Model model) throws JsonProcessingException {

      return "장바구니에 상품을 담았습니다.";
   }

   // 장바구니 페이지로 이동
   @RequestMapping(value="/cart.do")
   public String cart(HttpServletRequest request, Model model) throws JsonProcessingException{
      HttpSession session = request.getSession();
    //비로그인
      if (session.getAttribute("member") == null) {
         if(request.getParameter("teaId") == null) {
            return "cart";
         }else {
         String teaId = request.getParameter("teaId");
         String cnt = request.getParameter("cnt");
         ShopVO vo = new ShopVO();
         vo.setTeaId(Integer.parseInt(teaId));
         ShopVO cartItem = shopService.getShop(vo);
         cartItem.setProCnt(Integer.parseInt(cnt));
         List<ShopVO> cartItemList = new ArrayList<ShopVO>();
         cartItemList.add(cartItem);
         model.addAttribute("cartItem",cartItemList );
         return "cart";}
      // 로그인
      } else {
         MemberVO member =(MemberVO)session.getAttribute("member");
         String memberId = member.getMemberId();
         
         if(request.getParameter("teaId") != null) {
            String teaId = request.getParameter("teaId");
            String cnt = request.getParameter("cnt");
            
            CartVO cart = new CartVO();
            cart.setMemberId(memberId);
            cart.setTeaId(Integer.parseInt(teaId));
            cart.setProCnt(Integer.parseInt(cnt));
            cartService.insertCart(cart);
            
            return "redirect:getCartList.do";
         }
         
         CartVO vo = new CartVO();
         vo.setMemberId(memberId);
         model.addAttribute("cartItem", cartService.getCartList(vo));

         return "cart";
      }
      
   }

   public String updateCart(CartVO vo) {

      cartService.updateCart(vo);
      return "redirect:getCartList.do";
   }

   @RequestMapping("/deleteCart.do")
   public String deleteCart(@RequestParam("teaId") int teaId, @RequestParam("memberId") String memberId) {
      CartVO cart = new CartVO();
      cart.setMemberId(memberId);
      cart.setTeaId(teaId);
      cartService.deleteCart(cart);
      return "redirect:getCartList.do?memberId="+memberId;
   }

   @RequestMapping("getCartList.do")
   public String getCartList(HttpServletRequest request, Model model) {
      HttpSession session = request.getSession();
      MemberVO member =(MemberVO)session.getAttribute("member");
      String memberId = member.getMemberId();
      
      CartVO vo = new CartVO();
      vo.setMemberId(memberId);
      model.addAttribute("cartItem", cartService.getCartList(vo));
      return "cart";
   }

}
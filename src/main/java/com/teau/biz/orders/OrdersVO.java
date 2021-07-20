package com.teau.biz.orders;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersVO {
	// 주문번호
	private int ordersId;
	// 상품아이디
	private int teaId;
	// 회원 아이디
	private String memberId;
	// 주문일자
	private Date ordersDate;
	// 수령인
	private String ordersReceiver;
	// 배송지 주소
	private String ordersAddress;
	// 배송지 전화번호
	private String ordersPhone;
	// 상품 요청사항
	private String req;
	// 배송 요청사항
	private String ordersReq;
	// 결제방법
	private String ordersPayment;
	// 포인트
	private int usingPoint;
	// 총 금액
	private int ordersTotal;
	//쿼리 매핑, 상품 이름
	private String teaName;
	//쿼리 매핑, 상품 가격
	private String teaPrice;
	
}

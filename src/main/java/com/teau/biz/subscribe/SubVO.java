package com.teau.biz.subscribe;

import java.util.Date;

import lombok.Data;

@Data
public class SubVO {
	private int subId;
	private String orderCate;
	private String subUser;
	private Date subDate;
	private int subPrice;
	
	// 씨앗
	private String tagTaste;
	private String tagCaff;
	private String tagEffect;
	
	// 새싹 
	private String tagSeason;
	private String tagBase;
	private String tagDrink;
	private String tagBlend;
	
	// 나무 
	private String  TreeSelect;
	private String TreeAdd;
	private String TreeReq;
	

	
	
	
}

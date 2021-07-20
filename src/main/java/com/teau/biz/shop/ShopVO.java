package com.teau.biz.shop;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
public class ShopVO {
	private int teaId;
	private String orderCate;
	private String teaName;
	private int teaPrice;
	private String teaImg;
	private String teaInfo;
	private Date teaRegdate;
	private String tagBase;
	private String tagCaff;
	private String tagSeason;
	private String tagUser;
	private String tagTaste;
	private String tagEff;
	private String tagBlend;
	private String tagDrink;
	private MultipartFile uploadFile;
	private int proCnt;

}

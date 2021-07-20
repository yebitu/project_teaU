package com.teau.biz.subscribe;

import lombok.Data;

//롬복으로 게터세터 투스트링
@Data
public class SubTeaVO {
	
	private int ttId;
	private String ttCate;
	private String ttGen;
	private String ttName;
	private int ttImg;
	private String ttInfo;
	private int ttPrice;

}

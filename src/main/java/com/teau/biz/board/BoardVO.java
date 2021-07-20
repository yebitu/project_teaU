package com.teau.biz.board;

import java.sql.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)
// 일반게시글(씨앗/새싹)
public class BoardVO {

    // 게시판 번호
    private int boardId;

    // 게시판 구분 1 일반 2 랭킹
    private int boardCate;

    // 게시글 작성자
    private String boardWriter;

    // 게시글 제목
    private String boardTitle;

    // 게시글 내용
    private String boardContent;

    // 썸네일 사진
    private String boardImgm;

    // 멀티파트
    private MultipartFile uploadFile;

    // 게시글 날짜
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date boardRegdate;

    // 게시글 댓글수
    private int replyCount;

    private int pageNum = 1; // 페이지 번호
    private int amount = 9; // 일반 게시판 페이지당 데이터 갯수
    private int amountR = 4; // 랭킹 게시판 페이지당 데이터 갯수
    
    private int boardLikeCount; // 게시판 좋아요 숫자

    // 검색
    private String searchCondition;
    private String searchKeyword;
    
}

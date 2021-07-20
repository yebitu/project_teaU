package com.teau.biz.service.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.board.BoardLikeVO;

@Repository
public class BoardLikeDAO {
	
    @Autowired
    private SqlSessionTemplate mybatis;

	 public void insertBoardLike(BoardLikeVO vo) {
	        System.out.println("===> Mybatis로 insertBoardLike 기능 처리");
	        mybatis.insert("BoardLikeDAO.insertBoardLike", vo);
	      
	    }

	    
	 public void deleteBoardLike(BoardLikeVO vo) {
	        System.out.println("===> Mybatis로 deleteBoardLike 기능 처리");
	        System.out.println("boardLikeDAO"+vo.getboardLikeId());
	        mybatis.delete("BoardLikeDAO.deleteBoardLike", vo);
	    }
}

package com.teau.biz.service.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.board.BoardLikeVO;

@Service("BoardLikeService")
public class BoardLikeServiceImpl implements BoardLikeService{
	
	@Autowired
	private BoardLikeDAO boardLikeDAO;
	
	public BoardLikeServiceImpl() {
	}
	
	 public void insertBoardLike(BoardLikeVO vo)  {
	        boardLikeDAO.insertBoardLike(vo);
	    }
	 

	 public void deleteBoardLike(BoardLikeVO vo)  {
		 	System.out.println("boardLikeService"+vo.getBoardId());
	        boardLikeDAO.deleteBoardLike(vo);
	    }
	    

}

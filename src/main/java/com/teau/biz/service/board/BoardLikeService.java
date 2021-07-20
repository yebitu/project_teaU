package com.teau.biz.service.board;

import com.teau.biz.board.BoardLikeVO;

public interface BoardLikeService {
	
    // 좋아요 누름
    void insertBoardLike(BoardLikeVO vo);
    
    // 좋아요 누름 해제
    void deleteBoardLike(BoardLikeVO vo);
}

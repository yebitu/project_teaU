package com.teau.biz.service.board;

import java.util.List;

import com.teau.biz.board.ReplyVO;

public interface ReplyService {

    // 글 등록
    public void insertReply(ReplyVO vo);

    // 글 삭제
    public void deleteReply(ReplyVO vo);

    // 글 보기
    public List<ReplyVO> listReply(int boardId);
}

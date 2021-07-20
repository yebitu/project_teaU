package com.teau.biz.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.board.ReplyVO;

@Service("ReplyService")
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyDAO ReplyDAO;

	public ReplyServiceImpl() {
	}

	public void insertReply(ReplyVO vo) {
		ReplyDAO.insertReply(vo);
	}

	public void deleteReply(ReplyVO vo) {
		ReplyDAO.deleteReply(vo);
	}

	public List<ReplyVO> listReply(int boardId) {
		ReplyDAO.listReply(boardId);
		return ReplyDAO.listReply(boardId);
	}

}

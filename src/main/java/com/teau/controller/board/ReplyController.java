package com.teau.controller.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.teau.biz.board.ReplyVO;
import com.teau.biz.board.BoardVO;
import com.teau.biz.service.board.BoardService;
import com.teau.biz.service.board.ReplyService;

@Controller
@SessionAttributes("reply")
public class ReplyController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private ReplyService replyService;

	// 댓글 작성
	@RequestMapping(value = "/replyCreate.do", method = RequestMethod.POST)
	public String insertReply(ReplyVO vo, BoardVO dvo) throws Exception {
		System.out.println("댓글 삽입 테스트11111111111111111111");

		replyService.insertReply(vo);
		System.out.println("댓글 삽입 테스트222222222222222222222");

		// 게시물에 댓글 추가시 업데이트
		boardService.updateReplyCount(dvo);

		return "redirect:/boardViewer.do?boardId=" + vo.getBoardId() + "&boardImgm=" + dvo.getBoardImgm();

	}

	// 댓글 삭제
	@RequestMapping(value = "/replyDelete.do")
	public String deleteReply(ReplyVO vo, BoardVO dvo) throws Exception {
		System.out.println("댓글 삭제 처리");
		replyService.deleteReply(vo);

		// 게시물에 댓글 추가시 업데이트
		boardService.updateReplyCount(dvo);
		System.out.println(dvo.getBoardImgm());

		return "redirect:/boardViewer.do?boardId=" + vo.getBoardId() + "&boardImgm=" + dvo.getBoardImgm();
	}

}

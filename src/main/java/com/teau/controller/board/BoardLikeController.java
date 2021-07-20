package com.teau.controller.board;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.teau.biz.board.BoardLikeVO;
import com.teau.biz.board.BoardVO;
import com.teau.biz.service.board.BoardLikeService;
import com.teau.biz.service.board.BoardService;

@Controller
@SessionAttributes("boardLike")
public class BoardLikeController {
	 @Autowired
	 private BoardLikeService boardLikeService;
	 
	 @Autowired
	 private BoardService boardService;
	 
	 // 랭킹 빈하트 클릭시 하트 저장
	
	    @ResponseBody
	    @RequestMapping(value = "/heartCreate.do")
	    public void save_heart(@RequestParam Map<String, String> paramMap, BoardVO vo, BoardLikeVO like) throws Exception {

	    	
	    	System.out.println(paramMap);
	    	
	        // 게시물 번호 세팅
	        like.setBoardId(Integer.parseInt(paramMap.get("boardId")));
	        
	        // 회원 이름 세팅
	        like.setMemberId(paramMap.get("memberId"));
	        
	        // 하트 개수 업데이트를 위한 게시물 번호 세팅
	        vo.setBoardId(Integer.parseInt(paramMap.get("boardId")));
	       	       	        	        
	        // 좋아요 객체 전달
	        boardLikeService.insertBoardLike(like);
	        
	        // +1된 하트 갯수를 담아오기위함
	        boardService.updateBoardLikeCount(vo);
	        
	        System.out.println("현재게시판의좋아요총갯수:+1 "+ vo.getBoardLikeCount());
	        //return "redirect:/boardViewer.do?boardId=" + vo.getBoardId() + "&boardImgm=" + vo.getBoardImgm();
	    }

	    // 랭킹 꽉찬하트 클릭시 하트 해제
	    @ResponseBody
	    @RequestMapping(value = "/heartDelete.do")
	    public void remove_heart(@RequestParam Map<String, String> paramMap, BoardVO vo , BoardLikeVO like) throws Exception {
	 
	    	System.out.println(paramMap);
	    	
	        // 게시물 번호 세팅
	        like.setBoardId(Integer.parseInt(paramMap.get("boardId")));
	        
	        // 회원 이름 세팅
	        like.setMemberId(paramMap.get("memberId"));
	        
	        // 하트 개수 업데이트를 위한 게시물 번호 세팅
	        vo.setBoardId(Integer.parseInt(paramMap.get("boardId")));	       	        
	    	
	    	// 좋아요 객체 전달
	    	boardLikeService.deleteBoardLike(like);
	    	

	    	// -1된 하트 갯수를 담아오기위함
	    	boardService.updateBoardLikeCount(vo);
	        
	    	System.out.println("현재게시판의좋아요총갯수:-1 "+ vo.getBoardLikeCount());
	    	
	       // return "redirect:/boardViewer.do?boardId=" + vo.getBoardId() + "&boardImgm=" + vo.getBoardImgm();
	    }

}

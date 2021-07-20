package com.teau.biz.service.board;

import java.util.List;
import java.util.Map;

import com.teau.biz.board.BoardVO;

public interface BoardService {

    // CRUD 기능의 메소드 구현
    // 글 등록
    void insertBoard(BoardVO vo);

    // 글 수정
    void updateBoard(BoardVO vo);

    // 글 댓 업뎃
    void updateReplyCount(BoardVO vo) throws Exception;

    // 글 삭제
    void deleteBoard(BoardVO vo);

    // 글 상세조회
    BoardVO getBoard(BoardVO vo);

    // 씨앗 목록 조회
    List<BoardVO> getBoardListO(BoardVO vo);

    // 새싹 목록 조회
    List<BoardVO> getBoardListB(BoardVO vo);

    // 랭킹 목록 조회
    List<BoardVO> getBoardListR(BoardVO vo);  
    
    // 좋아요 갯수 업뎃
    void updateBoardLikeCount(BoardVO vo) throws Exception;

    // 글 갯수
    int totalCnt(BoardVO vo);

    int totalCntB(BoardVO vo);

    int totalCntR(BoardVO vo);
    
    int getLikeChk(Map<String, String> paramMap);
    
 // 랭킹 순위 조회
    List<BoardVO> getOrderList(BoardVO vo);  


}

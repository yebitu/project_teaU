package com.teau.biz.service.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.board.ReplyVO;

//DAO(Data Access Object)
@Repository
public class ReplyDAO {
    @Autowired
    private SqlSessionTemplate mybatis;

    // CRUD 기능
    // insert 기능
    public void insertReply(ReplyVO vo) {
        System.out.println("===> Mybatis로 insertReply 기능 처리");
        mybatis.insert("ReplyDAO.insertReply", vo);
        System.out.println("===> Mybatis로 insertReply 기능 처리완료");
    }

    // delete
    public void deleteReply(ReplyVO vo) {
        System.out.println("===> Mybatis로 deleteReply 기능 처리");
        mybatis.delete("ReplyDAO.deleteReply", vo);
    }

    // view
    public List<ReplyVO> listReply(int boardId) {
        System.out.println("===> Mybatis로 listReply 기능 처리");
        return mybatis.selectList("ReplyDAO.listReply", boardId);
    }

}

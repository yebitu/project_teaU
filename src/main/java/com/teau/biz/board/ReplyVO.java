package com.teau.biz.board;

import java.sql.Date;

// 댓글 
public class ReplyVO {

    // 댓글 번호
    private int replyId;

    // 게시판 번호
    private int boardId;

    // 댓글 작성자
    private String replyWriter;

    // 댓글 내용
    private String replyContent;

    // 댓글 단 시간
    private Date replyRegdate;

    public int getReplyId() {
        return replyId;
    }

    public void setReplyId(int replyId) {
        this.replyId = replyId;
    }

    public int getBoardId() {
        return boardId;
    }

    public void setBoardId(int boardId) {
        this.boardId = boardId;
    }

    public String getReplyWriter() {
        return replyWriter;
    }

    public void setReplyWriter(String replyWriter) {
        this.replyWriter = replyWriter;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public Date getReplyRegdate() {
        return replyRegdate;
    }

    public void setReplyRegdate(Date replyRegdate) {
        this.replyRegdate = replyRegdate;
    }

    @Override
    public String toString() {
        return "ReplyVO [replyId=" + replyId + ", boardId=" + boardId + ", replyWriter=" + replyWriter
                + ", replyContent=" + replyContent + "]";
    }
}

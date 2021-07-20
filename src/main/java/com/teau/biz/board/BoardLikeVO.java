package com.teau.biz.board;

public class BoardLikeVO {

		private int boardLikeId;
		private int boardId;
		private String memberId;
		
		public int getboardLikeId() {
			return boardLikeId;
		}
		public void setboardLikeId(int boardLikeId) {
			this.boardLikeId = boardLikeId;
		}
		public int getBoardId() {
			return boardId;
		}
		public void setBoardId(int boardId) {
			this.boardId = boardId;
		}
		public String getMemberId() {
			return memberId;
		}
		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}
		
		@Override
		public String toString() {
			return "BoardLikeVO [boardLikeId=" + boardLikeId + ", boardId=" + boardId + ", memberId=" + memberId + "]";
		}
		
}

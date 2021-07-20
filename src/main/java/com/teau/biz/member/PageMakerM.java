package com.teau.biz.member;

import lombok.Data;

@Data
public class PageMakerM {
    private int startPage;
    private int endPage;
    private boolean prev;
    private boolean next;

    private MemberVO cri;

    public PageMakerM(MemberVO cri, int total) {
        this.cri = cri;
        int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
        this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0) * 10);
        this.startPage = getEndPage() - 9;

        if (realEnd < this.endPage) {
            this.endPage = realEnd;
        }

        this.next = getEndPage() < realEnd;
        this.prev = getStartPage() > 1;

    }
}

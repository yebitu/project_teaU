package com.teau.biz.service.finder;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.shop.ShopVO;

@Service("TeaFinderService")
public class TeaFinderServiceimpl implements TeaFinderService  {
	
    @Autowired
    private TeaFinderDAO teaFinderDAO;
    
    public TeaFinderServiceimpl() {}
    
    public List<ShopVO> getTeaFinderList(ShopVO vo) {
        return teaFinderDAO.getTeaFinderList(vo);
    }

}

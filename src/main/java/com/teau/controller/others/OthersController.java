package com.teau.controller.others;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.service.finder.TeaFinderService;
import com.teau.biz.shop.ShopVO;

@Controller
public class OthersController {
	
	@Autowired
	private TeaFinderService teaFinderService;

    // 매거진 화면으로 이동
    @RequestMapping("/magazine.do")
    public String magazine() {
        System.out.println("매거진 페이지 이동");
        return "magazine";
    }
    
    // 티파인더 화면으로 이동
    @RequestMapping("/tea_finder.do")
    public String teaFinder() {
        System.out.println("티파인더 페이지 이동");
        return "tea_finder";
    }
    
   
    // 티파인더 결과 처리
    @RequestMapping (value = "/teaFinder.do", produces = "application/json; charset=utf8")
    @ResponseBody
    public String teaFiner(ShopVO vo) throws JsonProcessingException {
        System.out.println("티파인더 처리");
        
        Map<String, Object> hashmap = new HashMap<String, Object>();
        List<ShopVO> tea = teaFinderService.getTeaFinderList(vo);
        hashmap.put("teaFinderList", tea);
        
        System.out.println(tea);
        
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
        System.out.println(json);
        return json;
    }
    
    
    
    
}

package com.teau.controller.shop;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class ShopController {

	@Autowired
	private ShopService shopService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 각각 페이지로 전체리스트 가지고 이동
	@RequestMapping(value = "/shopSeason.do")
	public String getShopSeasonList(Model model) {
		model.addAttribute("shopSeason", shopService.getShopList());

		return "shop/shopSeason";
	}

	@RequestMapping(value = "/shopUser.do")
	public String getShopUserList(Model model) {
		model.addAttribute("shopUser", shopService.getShopList());

		return "shop/shopUser";
	}

	@RequestMapping(value = "/shopBlend.do")
	public String getShopBlendList(Model model) {
		model.addAttribute("shopBlend", shopService.getShopList());

		return "shop/shopBlend";
	}

	// 상품 추가 & 수정
	@RequestMapping("shopAdmin.do")
	public String updateData() {

		return "shop/shopAdmin";
	}

	// 상품 상세
	@RequestMapping(value = "/shopDetails.do")
	public String getShop(@RequestParam("teaId") int id, Model model) {
		ShopVO shop = new ShopVO();
		shop.setTeaId(id);

		model.addAttribute("teaDetail", shopService.getShop(shop));
		model.addAttribute("shopImg", shopService.getImg(shop));
		
		return "shop/shopDetails";
	}

	// CRUD
	@RequestMapping(value = "/insertShop.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String insertShop(MultipartHttpServletRequest request, ShopVO vo) throws IOException {

		String fileName = "";
		
		List<MultipartFile> fileList = request.getFiles("uploadFile");
		
		List<String> fileNames = new ArrayList<String>();
		
		for (MultipartFile filePart : fileList) {
			fileName = filePart.getOriginalFilename();
			System.out.println("실제 파일명:" + fileName);
			fileNames.add(fileName);
			vo.setTeaImg(fileNames.get(0));

			if (!fileName.equals("")) {
				try {
					FileOutputStream fs = new FileOutputStream(uploadPath+  File.separator + fileName);
					fs.write(filePart.getBytes());
					fs.close();

				} catch (Exception e) {

					e.printStackTrace();

				}
			}
		}
		  
		System.out.println("등록");
		shopService.insertShop(vo, fileNames);
		return "상품 등록이 완료되었습니다.";
	}

	// U
	@RequestMapping(value = "/updateShop.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String updateShop( MultipartHttpServletRequest request, ShopVO vo) throws IOException {

		String fileName = "";
		
		List<MultipartFile> fileList = request.getFiles("uploadFile");
		
		List<String> fileNames = new ArrayList<String>();
		
		for (MultipartFile filePart : fileList) {
			fileName = filePart.getOriginalFilename();
			System.out.println("실제 파일명:" + fileName);
			fileNames.add(fileName);
			vo.setTeaImg(fileNames.get(0));

			if (!fileName.equals("")) {
				try {
					FileOutputStream fs = new FileOutputStream(uploadPath+  File.separator + fileName);
					fs.write(filePart.getBytes());
					fs.close();

				} catch (Exception e) {

					e.printStackTrace();

				}
			}
		}
		System.out.println("수정");
		shopService.updateShop(vo, fileNames);
		return "상품 수정이 완료되었습니다.";
	}

	// 수정 버튼 클릭 시 기존의 정보들 가져오기
	@RequestMapping(value = "/updateInfo.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String updateInfo(@RequestParam Map<String, String> paramMap) throws JsonProcessingException {
		ShopVO vo = new ShopVO();
		vo.setTeaId(Integer.parseInt(paramMap.get("teaId")));

		ShopVO shopInfo = shopService.getShop(vo);

		Map<String, Object> hashMap = new HashMap<String, Object>();

		hashMap.put("shopInfo", shopInfo);

		ObjectMapper mapper = new ObjectMapper();

		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);

		return json;
	}

	@RequestMapping(value = "/deleteShop.do")
	public String deleteShop(@RequestParam("teaId") int teaId) {
		ShopVO shop = new ShopVO();
		shop.setTeaId(teaId);

		shopService.deleteShop(shop);

		return "redirect:shopSeason.do";
	}

}

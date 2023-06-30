package com.example.demo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ItemListRepository;
import com.example.demo.repository.ItemRepository;

@Controller
public class MenuAdminController {

	@Autowired
	ItemRepository itemRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ItemListRepository itemListRepository;
	
	@GetMapping("/admin/menu")
	public String index(
			Model m) {
		
		// 全カテゴリー一覧を取得
		
		
		return "/admin/menu";
	}
	


	
	
}

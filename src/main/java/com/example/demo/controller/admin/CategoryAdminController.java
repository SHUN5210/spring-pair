package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Category;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ItemListRepository;
import com.example.demo.repository.ItemRepository;

@Controller
public class CategoryAdminController {

	@Autowired
	ItemRepository itemRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ItemListRepository itemListRepository;
	
	@GetMapping("/admin/categroy")
	public String index(@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		
		return "/admin/category";
	}
	


	
	
}

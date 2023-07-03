package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Category;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ItemRepository;
import com.example.demo.repository.ItemsListRepository;

@Controller
public class CategoryAdminController {

	@Autowired
	ItemRepository itemRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ItemsListRepository itemsListRepository;
	
	@GetMapping("/admin/categroy")
	public String index(@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		
		return "/admin/category";
	}
	@GetMapping("/admin/category/add")
	public String create() {
		
		return"/admin/addCategory";
	}

	@PostMapping("/admin/category/add")
	public String create(
			@RequestParam(name = "name", required=false) String name,
			Model m) {
		Category	item=new Category(name);
		categoryRepository.save(item);
		return "redirect:/admin/categroy";
	}
	
	@GetMapping("/admin/category/{id}/detail")
	public String delete(@PathVariable("id") Integer id, Model m) {
		categoryRepository.deleteById(id);
		return "redirect:/admin/categroy";
	}


	
	
}

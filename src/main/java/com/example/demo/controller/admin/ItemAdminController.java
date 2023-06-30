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
import com.example.demo.entity.ItemsList;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ItemListRepository;
import com.example.demo.repository.ItemRepository;

@Controller
public class ItemAdminController {

	@Autowired
	ItemRepository itemRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ItemListRepository itemListRepository;
	
	@GetMapping("/admin/items")
	public String index(@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		
		List<ItemsList> list = null;
		
		if (categoryId == null) {
			//categoryIdに値がないとき商品一覧情報の取得
			list=itemListRepository.findAll();
			} else {
			// itemsテーブルをカテゴリーIDを指定して一覧を取得
			list = itemListRepository.findByCategoryId(categoryId);
		}
		m.addAttribute("list",list);
		return "/admin/items";
	}
	
	@GetMapping("/admin/items/add")
	public String create(
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		return"/admin/addItem";
	}

	@PostMapping("/admin/items/add")
	public String create(
			@RequestParam(name = "categoryId", required=false) Integer categoryId,
			@RequestParam(name = "name", required=false) String name,
			Model m) {
		ItemsList item=new ItemsList(categoryId,name);
		itemListRepository.save(item);
		return "redirect:/admin/items";
	}

	//削除
	@GetMapping("/admin/items/{id}/detail")
	public String delete(@PathVariable("id") Integer id, Model m) {
		itemListRepository.deleteById(id);
		return "redirect:/admin/items";
	}

	
}

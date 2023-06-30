package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
//	@GetMapping("/admin/items/add")
//	public String create(
//			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
//			Model m) {
//		List<Category> categoryList = categoryRepository.findAll();
//		m.addAttribute("categories", categoryList);
//		return"/admin/addItem";
//	}
//	
//	@PostMapping("/admin/items/add")
//	public String create(
//			@RequestParam(name = "categoryId", required=false) Integer categoryId,
//			@RequestParam(name = "name", required=false) String name,
//			Model m) {
//		Item item=new Item(categoryId,name);
//		itemRepository.save(item);
//		return "redirect:/admin/items";
//	}
//	@GetMapping("/admin/items/{id}/edit")
//	public String edit(@PathVariable("id") Integer id,
//			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
//			Model m) {
//		
//		List<Category> categoryList = categoryRepository.findAll();
//		m.addAttribute("categories", categoryList);
//			
//		System.err.println(id);
//		Item item =itemRepository.findById(id).get();
//		m.addAttribute("item",item);
//		return "/admin/editItem";
//	}
//	@PostMapping("/admin/items/{id}/edit")
//	public String update
//			(@PathVariable("id") Integer id,
//			@RequestParam(name = "categoryId", required=false) Integer categoryId,
//			@RequestParam(name = "name", required=false) String name,
//			Model m) {
//		Item item=new Item(id,categoryId,name);
//		itemRepository.save(item);
//		return "redirect:/admin/items";
//	}
//	
//	@GetMapping("/admin/items/{id}/delete")
//	public String delete(@PathVariable("id") Integer id, Model m) {
//		itemRepository.deleteById(id);
//		return "redirect:/admin/items";
//	}
//	

	
	
}

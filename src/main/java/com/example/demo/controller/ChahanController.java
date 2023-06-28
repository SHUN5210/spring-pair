package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Category;
import com.example.demo.entity.Element;
import com.example.demo.entity.Item;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ElementRepository;
import com.example.demo.repository.ItemRepository;

@Controller
public class ChahanController {
	@Autowired
	ElementRepository elementRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	ItemRepository itemRepository;
	
	
	@GetMapping("/items/search")
	public String menu (@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		
		List<Item> item = null;
		
		if (categoryId == null) {
			//categoryIdに値がないとき商品一覧情報の取得
			item=itemRepository.findAll();
		} else {
			// itemsテーブルをカテゴリーIDを指定して一覧を取得
			item = itemRepository.findByCategoryId(categoryId);
		}
		
		m.addAttribute("item",item);
		return "search";
	}
	
	@PostMapping("/items/{id}/search")
	public String cook (
			@PathVariable("id") Integer id,
			Model m) {
//		Item item =itemRepository.findById(id).get();
//		Item item =itemRepository.findById(id).get()
		Item item = null;
		item =itemRepository.findById(id).get();
		
		System.out.println(item.getItemId());
		List<Element> list=null;
		list =elementRepository.findByName(item.getItemId());
		System.out.println(list);
		m.addAttribute("list",list);
		return"search";
	}
	
	
}

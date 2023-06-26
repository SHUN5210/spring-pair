package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Item;
import com.example.demo.repository.ItemRepository;

@Controller
public class priceController {
	
	@Autowired
	ItemRepository itemRepository;
	
	//____-06-__
	
	@PostMapping("/items/enn")
	public String engel(
			@RequestParam(name = "today", defaultValue = "") String today,
			Model m) {
		
		List<Item> list = null;
		
		String mm ="____-"+"06"+"-__";
		
		list = itemRepository.findByTodayLike(mm);
		m.addAttribute("list",list);
		return"mouth";
	}
}

package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Item;
import com.example.demo.repository.ItemRepository;


@Controller
public class itemController {
	
	@Autowired
	ItemRepository itemRepository;
	
	@GetMapping("/items")
	public String index(
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		List<Item> item = null;
		item=itemRepository.findAll();
		
		m.addAttribute("item",item);
		
		return"items";
	}
}

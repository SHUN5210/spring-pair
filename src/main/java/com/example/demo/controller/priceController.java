package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Item;
import com.example.demo.repository.ItemRepository;

@Controller
public class priceController {
	
	@Autowired
	ItemRepository itemRepository;
	
	//____-06-__
	
	@GetMapping("/items/enn")
	public String index(
			@RequestParam(name = "month1", required=false) String month1,
			@RequestParam(name = "today", defaultValue = "") String today,
			Model m) {
		
		String mm=null;
		
		List<Item> list = null;
		List<Item> all = null;
		String mm2;
		String num;
		String num2;
		
//		int sum = 
//		list.stream().mapToInt(Integer::intValue).sum();
		
		List<String> month = new ArrayList<>();
		
		for(int i = 1;i<=12;i++) {
			System.out.println(i);
			num="0"+i;
			mm ="____-"+num+"-__";
			list = itemRepository.findByTodayLike(mm);
			if(list.isEmpty()==false) {
				month.add(num);
				System.out.println(num);
			}
			
			num2=Integer.toString(i);
			mm2 ="____-"+num2+"-__";
			list = itemRepository.findByTodayLike(mm2);
			if(list.isEmpty()==false) {
				month.add(num2);
				System.out.println(num2);
			}
		}
		
		if(month1!=null) {
			mm ="____-"+month1+"-__";
			List<Item> item  = itemRepository.findByTodayLike(mm);
			m.addAttribute("list",item);
			m.addAttribute("month",month);
			return"mouth";
			}
		
		all = itemRepository.findAll();
		
		String totalPrice = "0";
		
		for (Item a : all) {
			
			
			totalPrice = totalPrice + Integer.parseInt(a.getPrice());;
			
		}
		m.addAttribute("totalPrice", totalPrice);
		m.addAttribute("month",month);
		m.addAttribute("list",all);
		
		System.out.println(totalPrice);
		
		return"mouth";
	}
//	@PostMapping("/items/enn")
//	public String engel(
//			@RequestParam(name = "today", defaultValue = "") String today,
//			Model m) {
//		
//		List<Item> list = null;
//		List<Item> all = null;
//		String mm ;
//		String mm2;
//		String num;
//		String num2;
//		
//		List<String> month = new ArrayList<>();
//		
//		for(int i = 1;i<=12;i++) {
//			System.out.println(i);
//			num="0"+i;
//			mm ="____-"+num+"-__";
//			list = itemRepository.findByTodayLike(mm);
//			if(list.isEmpty()==false) {
//				month.add(num);
//				System.out.println(num);
//			}
//			
//			num2=Integer.toString(i);
//			mm2 ="____-"+num2+"-__";
//			list = itemRepository.findByTodayLike(mm2);
//			if(list.isEmpty()==false) {
//				month.add(num2);
//				System.out.println(num2);
//			}
//		}
//
//		all = itemRepository.findAll();
//		m.addAttribute("month",month);
//		m.addAttribute("list",all);
//		return"mouth";
//	}
}

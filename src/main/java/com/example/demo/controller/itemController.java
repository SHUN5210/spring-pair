package com.example.demo.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Category;
import com.example.demo.entity.Item;
import com.example.demo.entity.ItemsList;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ItemRepository;
import com.example.demo.repository.ItemsListRepository;


@Controller
public class itemController {
	@Autowired
	ItemRepository itemRepository;
	
	@Autowired
	ItemsListRepository itemsListRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	

	
	@GetMapping("/items")
	public String index(
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
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
		
		
		LocalDate date= LocalDate.now();//今日の日にち
		List <String> err1 = new ArrayList<>();//エラー
		List <String> data1 = new ArrayList<>();//エラーがある日にち
		
		
		final String FORMAT = "yyyy-MM-dd";
		LocalDate date1=date.minusDays(2);
		LocalDate date2=date.plusDays(1);
		
		for(int i = 0 ; i<=item.size()-1;i++) {
		LocalDate date3 = LocalDate.parse
				(item.get(i).getCare(), DateTimeFormatter.ofPattern(FORMAT));
		
		boolean d1 = date1.isBefore(date3);
		if(d1==false) {
			err1.add("賞味期限が近いです。");
			data1.add(item.get(i).getCare());
		}
		
		boolean d2 = date2.isBefore(date3);
		if(d2==false) {
			err1.add("賞味期限が切れています。");
			data1.add(item.get(i).getCare());
		}
		}
		
		m.addAttribute("err1",err1);
		m.addAttribute("data1",data1);
		return"items";
	}
	
	@PostMapping("/items")
	public String update(
			@RequestParam(name="name", required=false) String name,
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			@RequestParam(value = "itemId", defaultValue = "") Integer itemId,
			@RequestParam(name = "care", required=false) String care,
			@RequestParam(name = "today", required=false) String today,
			@RequestParam(name = "price", required=false) String price,
			Model m) {
		
		
		
		
		Item item=new Item(categoryId,name,itemId,today,care,price);
		itemRepository.save(item);
		return "redirect:/items";
	}
	
	
	
	@GetMapping("/items/add")
	public String store(
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		
	List<ItemsList> list = null;
		
//		// 全カテゴリー一覧を取得
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		
<<<<<<< HEAD
		LocalDate data= LocalDate.now();
=======
>>>>>>> refs/remotes/origin/おてらーん
		
		
		if (categoryId == null) {
			//categoryIdに値がないとき商品一覧情報の取得
<<<<<<< HEAD
			list=itemListRepository.findAll();
=======
			list=itemsListRepository.findAll();
>>>>>>> refs/remotes/origin/おてらーん
			} else {
			// itemsテーブルをカテゴリーIDを指定して一覧を取得
			list = itemsListRepository.findByCategoryId(categoryId);
		}
<<<<<<< HEAD
		m.addAttribute("data",data);
		m.addAttribute("list",list);
=======
//		
		m.addAttribute("list",list);
		
>>>>>>> refs/remotes/origin/おてらーん
		return "addItem";
	}
	@PostMapping("/items/confirm")
	public String confirm(
			@RequestParam(name = "categoryId", defaultValue = "") Integer categoryId,
			@RequestParam(name = "care", defaultValue = "") String care,
			@RequestParam(name = "price", defaultValue = "") String price,
			@RequestParam(name="detail", defaultValue = "") String detail,
			@RequestParam(name = "today", defaultValue = "") String today,
			Model m
			) {
		
		
		
		List <String> err = new ArrayList<>();
		if(care.equals("")) {
			err.add("賞味期限を選択してください");
		}else {
			final String FORMAT = "yyyy-MM-dd";
			LocalDate date1 = LocalDate.parse
					(today, DateTimeFormatter.ofPattern(FORMAT));
			LocalDate date2 = LocalDate.parse
					(care, DateTimeFormatter.ofPattern(FORMAT));
			
			boolean d2 = date1.isBefore(date2);
			if(d2==false) {
				err.add("賞味期限が切れています。");
			}
		}
		
		if(price.equals("")) {
			err.add("金額を入力してください");
		}else {
			try {
				Integer.parseInt(price);
			} catch (NumberFormatException e) {
				err.add("数値を入力してください");
				
			}
		}
		 
		 if(err.isEmpty()==false) {
			m.addAttribute("err",err);
			
			// 全カテゴリー一覧を取得
			List<Category> categoryList = categoryRepository.findAll();
			m.addAttribute("categories", categoryList);
			
			LocalDate data= LocalDate.now();
			
			List<ItemsList> list =null;
			if (categoryId == null) {
				//categoryIdに値がないとき商品一覧情報の取得
				list=itemListRepository.findAll();
				} else {
				// itemsテーブルをカテゴリーIDを指定して一覧を取得
				list = itemListRepository.findByCategoryId(categoryId);
			}
			m.addAttribute("data",data);
			m.addAttribute("list",list);
			 return "addItem";
		 }
		 ItemsList data = itemListRepository.findById(categoryId).get();
		m.addAttribute("data",data);
		m.addAttribute("care",care);
		m.addAttribute("price",price);
		m.addAttribute("detail",detail);
		m.addAttribute("today",today);
		
		return "confirm";
	}
	
	@GetMapping("/items/{id}/detail")
	public String detail(
			@PathVariable("id") Integer id,
			Model m
			) {
		Item item =itemRepository.findById(id).get();
		m.addAttribute("item",item);
		return"detail";
	}
	
	@GetMapping("/header")
	public String a() {
		return"header";
	}
}

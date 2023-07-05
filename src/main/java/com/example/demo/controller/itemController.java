package com.example.demo.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Category;
import com.example.demo.entity.Fridge;
import com.example.demo.entity.Item;
import com.example.demo.entity.ItemsList;
import com.example.demo.entity.price;
import com.example.demo.entity.priceDate;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.FridgeRepository;
import com.example.demo.repository.ItemRepository;
import com.example.demo.repository.ItemsListRepository;
import com.example.demo.repository.PriceDateRepository;
import com.example.demo.repository.PriceRepository;


@Controller
public class itemController {
	@Autowired
	ItemRepository itemRepository;
	
	@Autowired
	ItemsListRepository itemsListRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	FridgeRepository fridgeRepository;
	
	@Autowired
	PriceRepository priceRepository;
	
	@Autowired
	PriceDateRepository priceDateRepository;

	//ホーム画面
	@GetMapping("/items")
	public String index(
			@RequestParam(value = "fridge", defaultValue = "") Integer fridge,
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Fridge> fridgeList = fridgeRepository.findAll();
		m.addAttribute("fridge", fridgeList);
		
		List<Item> item = null;
		
		if (fridge == null) {
			//categoryIdに値がないとき商品一覧情報の取得
			item=itemRepository.findAll();
		} else {
			// itemsテーブルをカテゴリーIDを指定して一覧を取得
			item = itemRepository.findByFridge(fridge);
			
		}
		
		
		
		LocalDate date= LocalDate.now();//今日の日にち
		List <String> err1 = new ArrayList<>();//エラー
		List <String> data1 = new ArrayList<>();//エラーがある日にち
		List <String> name1 = new ArrayList<>();//エラーがある食材
		List <Integer> id1 = new ArrayList<>();//エラーがある番号
		
		
		final String FORMAT = "yyyy-MM-dd";
		LocalDate date1=date.plusDays(2);
		LocalDate date2=date.minusDays(1);
		
		for(int i = 0 ; i<=item.size()-1;i++) {
		LocalDate date3 = LocalDate.parse
				(item.get(i).getCare(), DateTimeFormatter.ofPattern(FORMAT));
		
		boolean d2 = date2.isBefore(date3);
		if(d2==false) {
			err1.add("賞味期限が切れています。");
			data1.add(item.get(i).getCare());
			name1.add(item.get(i).getName());
			id1.add(item.get(i).getId());
			continue;
		}
		
		boolean d1 = date1.isBefore(date3);
		if(d1==false) {
			err1.add("賞味期限が2日以内です。");
			data1.add(item.get(i).getCare());
			name1.add(item.get(i).getName());
			id1.add(item.get(i).getId());
			
		}
		
		
		}
		
		if(err1.isEmpty()==false) {
			m.addAttribute("err1",err1);
			m.addAttribute("data1",data1);
			m.addAttribute("name1",name1);
			m.addAttribute("id1",id1);
		}
		
		m.addAttribute("item",item);
		return"items";
	}
	
//	ホーム画面材料を追加
	@PostMapping("/items")
	public String update(
			@RequestParam(name="name", required=false) String name,
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			@RequestParam(value = "itemId", defaultValue = "") Integer itemId,
			@RequestParam(name = "care", required=false) String care,
			@RequestParam(name = "today", required=false) String today,
			@RequestParam(name = "price", required=false) String price,
			@RequestParam(name = "save", required=false) Integer save,
			Model m) {
		
		
		price price1=new price(name,today,price);
		
//		グラフのデータに使うテーブルに挿入
		Optional<Fridge> fridge =fridgeRepository.findById(save);
		
		
		Item item=new Item(categoryId,name,itemId,today,care,price,fridge.get().getId());
		itemRepository.save(item);
		priceRepository.save(price1);
		List<priceDate> pdate = null;
		pdate=priceDateRepository.findByTodayLike(today);
		if(pdate.isEmpty()) {
			priceDate pd1= new priceDate(today,price);
			priceDateRepository.save(pd1);
			}else  {
				int id = pdate.get(0).getId();
				int nedan=Integer.valueOf(price) + Integer.valueOf(pdate.get(0).getPrice());
				priceDate pd2= new priceDate(id,today,String.valueOf(nedan));
				priceDateRepository.save(pd2);
			
			}
		return "redirect:/items";
	}
	
	
	//食材を追加する画面
	@GetMapping("/items/add")
	public String store(
			@RequestParam(value = "categoryId", defaultValue = "") Integer categoryId,
			Model m) {
		
	List<ItemsList> list = null;
		
//		// 全カテゴリー一覧を取得
		List<Category> categoryList = categoryRepository.findAll();
		m.addAttribute("categories", categoryList);
		

		LocalDate data= LocalDate.now();

		
		if (categoryId == null) {
			//categoryIdに値がないとき商品一覧情報の取得

			list=itemsListRepository.findAll();

			} else {
			// itemsテーブルをカテゴリーIDを指定して一覧を取得
			list = itemsListRepository.findByCategoryId(categoryId);
			}
		m.addAttribute("data",data);
		m.addAttribute("list",list);

		return "addItem";
		
	}
	
	//登録の確認画面
	@PostMapping("/items/confirm")
	public String confirm(
			@RequestParam(name = "categoryId", defaultValue = "") Integer categoryId,
			@RequestParam(name = "care", defaultValue = "") String care,
			@RequestParam(name = "price", defaultValue = "") String price,
			@RequestParam(name="detail", defaultValue = "") String detail,
			@RequestParam(name = "today", defaultValue = "") String today,
			@RequestParam(name = "save", defaultValue = "") Integer save,
			@RequestParam(name = "range", defaultValue = "") String range,
			Model m
			) {
		
//		登録エラー探す
		List <String> err = new ArrayList<>();
//		日にち選択のエラー
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
//		金額入力のエラー
		if(price.equals("")) {
			err.add("金額を入力してください");
		}else {
			try {
				Integer.parseInt(price);
			} catch (NumberFormatException e) {
				err.add("数値を入力してください");
				
			}
		}
		 
//		エラーがあった場合の処理
		 if(err.isEmpty()==false) {
			m.addAttribute("err",err);
			
			// 全カテゴリー一覧を取得
			List<Category> categoryList = categoryRepository.findAll();
			m.addAttribute("categories", categoryList);
			
			LocalDate data= LocalDate.now();
			
			List<ItemsList> list =null;
			if (categoryId == null) {
				//categoryIdに値がないとき商品一覧情報の取得
				list=itemsListRepository.findAll();
				} else {
				// itemsテーブルをカテゴリーIDを指定して一覧を取得
				list = itemsListRepository.findByCategoryId(categoryId);
			}
			m.addAttribute("care",care);
			m.addAttribute("price",price);
			m.addAttribute("data",data);
			m.addAttribute("list",list);
			 return "addItem";
		 }
		 
//		 エラーがなかった場合
		 ItemsList data = itemsListRepository.findById(categoryId).get();
		 Optional<Fridge> fridge =fridgeRepository.findById(save);
//			String box=fridge.get().getName();
		
		m.addAttribute("data",data);
		m.addAttribute("care",care);
		m.addAttribute("price",price);
		m.addAttribute("detail",detail);
		m.addAttribute("today",today);
		m.addAttribute("save",save);
		m.addAttribute("range",range);
		m.addAttribute("box",fridge.get().getName());
		
		
		
		return "confirm";
	}
	
	@GetMapping("/items/{id}/detele")
	public String detail(
			@PathVariable("id") Integer id,
			Model m
			) {
		itemRepository.deleteById(id);
		return "redirect:/items";
	}
	
	@GetMapping("/header")
	public String a() {
		return"header";
	}
}

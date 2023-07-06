package com.example.demo.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Chahan;
import com.example.demo.entity.Element;
import com.example.demo.entity.ItemsList;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ChahanRepository;
import com.example.demo.repository.ElementRepository;
import com.example.demo.repository.ItemRepository;
import com.example.demo.repository.ItemsListRepository;

@Controller
public class MenuAdminController {

	@Autowired
	ItemRepository itemRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ItemsListRepository itemsListRepository;
	@Autowired
	ChahanRepository chahanRepository;
	@Autowired
	ElementRepository elementRepository;
	
	
	@GetMapping("/admin/menu")
	public String index(
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Chahan> chahanList = chahanRepository.findAll();
		m.addAttribute("chahan", chahanList);
		
		return "/admin/menu";
	}
	
	@GetMapping("/admin/menu/add")
	public String create(
			Model m
			) {
		List<ItemsList> list =itemsListRepository.findAll();
		m.addAttribute("list",list);
		return"/admin/addMenu";
	}

	@PostMapping("/admin/menu/add")
	public String create(
			@RequestParam(name = "menu", required=false) String menu,
			@RequestParam(name = "food1", defaultValue = "") Integer food1,
			@RequestParam(name = "food2", defaultValue = "") Integer food2,
			@RequestParam(name = "food3", defaultValue = "") Integer food3,
			Model m) {
		Optional<ItemsList> list1 =itemsListRepository.findById(food1);
//		Optional<ItemsList> list2 =itemsListRepository.findById(food2);
		Optional<ItemsList> list2 = null;
		Optional<ItemsList> list3 = null;
		String s2;
		String s3;
		
		Chahan item=null;
		
		if(food2.equals(0)&&food3.equals(0)) {
			s2="";
			s3="";
			item=new  Chahan(menu,list1.get().getName(),s2,s3);
			
		}else if(food2.equals(0)&&food3.equals(0)==false){
			s2="";
			 list3 =itemsListRepository.findById(food3);
			 item=new  Chahan(menu,list1.get().getName(),s2,list3.get().getName());
		}else if(food2.equals(0)==false&&food3.equals(0)){
			 s3="";
			 list2 =itemsListRepository.findById(food2);
			 item=new  Chahan(menu,list1.get().getName(),list2.get().getName(),s3);
		}else {
			list2 =itemsListRepository.findById(food2);
			list3 =itemsListRepository.findById(food3);
			item=new  Chahan(menu,list1.get().getName(),list2.get().getName(),list3.get().getName());
		}
		
		chahanRepository.save(item);
		
		
		Optional<Chahan> Cid =chahanRepository.findByMenu(menu);
		
		Element elist1 =new Element(Cid.get().getId(),food1);
		elementRepository.save(elist1);
		
		if(food2.equals(0)&&food3.equals(0)) {
			
		}else if(food2.equals(0)&&food3.equals(0)==false){
			s2="";
			Element elist3 =new Element(Cid.get().getId(),food3);
			elementRepository.save(elist3);
		}else if(food2.equals(0)==false&&food3.equals(0)){
			Element elist2 =new Element(Cid.get().getId(),food3);
			elementRepository.save(elist2);
		}else {
			Element elist2 =new Element(Cid.get().getId(),food3);
			elementRepository.save(elist2);
			Element elist3 =new Element(Cid.get().getId(),food3);
			elementRepository.save(elist3);
		}
		
//		Element elist1 =new Element(Cid.get().getId(),food1);
//		elementRepository.save(elist1);
//		if(food2.equals(0)==false) {
//			Element elist2 =new Element(Cid.get().getId(),food2);
//			elementRepository.save(elist2);
//		}else {
//			String s ="";
//			Element elist2 =new Element(Cid.get().getId(),s);
//			elementRepository.save(elist2);
//		}
//		if(food3.equals(null)==false) {
//			Element elist3 =new Element(Cid.get().getId(),food3);
//			elementRepository.save(elist3);
//		}
//		System.out.println();
//		

		
		
		return "redirect:/admin/menu";
	}
	
	@GetMapping("/admin/menu/{id}/detail")
	public String delete(@PathVariable("id") Integer id, Model m) {
		chahanRepository.deleteById(id);
		return "redirect:/admin/menu";
	}
	
}

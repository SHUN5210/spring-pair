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
			@RequestParam(name = "food1", required=false) Integer food1,
			@RequestParam(name = "food2", required=false) Integer food2,
			@RequestParam(name = "food3", required=false) Integer food3,
			Model m) {
		Optional<ItemsList> list1 =itemsListRepository.findById(food1);
		Optional<ItemsList> list2 =itemsListRepository.findById(food2);
		Optional<ItemsList> list3 =itemsListRepository.findById(food3);
		Chahan	item=new  Chahan(menu,list1.get().getName(),list2.get().getName(),list3.get().getName());
		chahanRepository.save(item);
		
		Optional <Chahan> Cid =chahanRepository.findByMenu(menu);
		
		Element elist1 =new Element(Cid.get().getId(),food1);
		Element elist2 =new Element(Cid.get().getId(),food2);
		Element elist3 =new Element(Cid.get().getId(),food3);
		elementRepository.save(elist1);
		elementRepository.save(elist2);
		elementRepository.save(elist3);
		
		
		
		return "redirect:/admin/menu";
	}
	
	@GetMapping("/admin/menu/{id}/detail")
	public String delete(@PathVariable("id") Integer id, Model m) {
		chahanRepository.deleteById(id);
		return "redirect:/admin/menu";
	}
	
}

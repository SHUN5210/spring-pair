package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Chahan;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.repository.ChahanRepository;
import com.example.demo.repository.ItemListRepository;
import com.example.demo.repository.ItemRepository;

@Controller
public class MenuAdminController {

	@Autowired
	ItemRepository itemRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ItemListRepository itemListRepository;
	@Autowired
	ChahanRepository chahanRepository;
	
	@GetMapping("/admin/menu")
	public String index(
			Model m) {
		
		// 全カテゴリー一覧を取得
		List<Chahan> chahanList = chahanRepository.findAll();
		m.addAttribute("chahan", chahanList);
		
		return "/admin/menu";
	}
	
	@GetMapping("/admin/menu/add")
	public String create() {
		
		return"/admin/addMenu";
	}

	@PostMapping("/admin/menu/add")
	public String create(
			@RequestParam(name = "menu", required=false) String menu,
			Model m) {
		Chahan	item=new Chahan(menu);
		chahanRepository.save(item);
		return "redirect:/admin/menu";
	}
	
	@GetMapping("/admin/menu/{id}/detail")
	public String delete(@PathVariable("id") Integer id, Model m) {
		chahanRepository.deleteById(id);
		return "redirect:/admin/menu";
	}
	
}

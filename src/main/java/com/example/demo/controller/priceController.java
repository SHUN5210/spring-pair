package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.price;
import com.example.demo.entity.priceDate;
import com.example.demo.repository.ItemRepository;
import com.example.demo.repository.PriceDateRepository;
import com.example.demo.repository.PriceRepository;

@Controller
public class priceController {
	
	@Autowired
	ItemRepository itemRepository;
	@Autowired
	PriceRepository priceRepository;
	@Autowired
	PriceDateRepository priceDateRepository;
	
	//____-06-__
	
	@GetMapping("/items/enn")
	public String index(
			@RequestParam(name = "month1", required=false) String month1,
			@RequestParam(name = "today", defaultValue = "") String today,
			Model m) {
		
		String mm=null;
		
		List<price> list = null;
		List<priceDate> all = null;
		String mm2;
		String num;
		String num2;
		
		List<String> month = new ArrayList<>();
		
		List<String> monthPrice = new ArrayList<>();//グラフポイント
		List<String> monthToday = new ArrayList<>();//グラフラベル
		
		for(int i = 1;i<=12;i++) {
			System.out.println(i);
			num="0"+i;
			mm ="____-"+num+"-__";
			list = priceRepository.findByTodayLike(mm);
			if(list.isEmpty()==false) {
				month.add(num);
			}
			
			num2=Integer.toString(i);
			mm2 ="____-"+num2+"-__";
			list = priceRepository.findByTodayLike(mm2);
			if(list.isEmpty()==false) {
				month.add(num2);
				
			}
		}
		
		if(month1!=null) {
			mm ="____-"+month1+"-__";
			List<price> item  = priceRepository.findByTodayLike(mm);
			all = priceDateRepository.findByTodayLike(mm);
			for(int i = 0 ; i<=all.size()-1;i++) {
//				mmmm= mmmm+Integer.valueOf(all.get(i).getPrice());
				monthPrice.add(all.get(i).getPrice());
				monthToday.add(all.get(i).getToday());
				}
				
				m.addAttribute("label",monthToday);
		        m.addAttribute("point",monthPrice);
			m.addAttribute("list",item);
			m.addAttribute("month",month);
			return"mouth";
			}
		
		
		
		
		all = priceDateRepository.findAll();
		for(int i = 0 ; i<=all.size()-1;i++) {
//		mmmm= mmmm+Integer.valueOf(all.get(i).getPrice());
		monthPrice.add(all.get(i).getPrice());
		monthToday.add(all.get(i).getToday());
		}
		
		m.addAttribute("label",monthToday);
        m.addAttribute("point",monthPrice);
		
        List<price> data  = priceRepository.findAll();
        
		m.addAttribute("month",month);
		m.addAttribute("list",data);
		
		return"mouth";
	}


	
	
}

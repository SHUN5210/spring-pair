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
import com.example.demo.model.Account;
import com.example.demo.repository.ItemRepository;
import com.example.demo.repository.PriceDateRepository;
import com.example.demo.repository.PriceRepository;

@Controller
public class priceController {
	
	@Autowired
	Account account;
	
	@Autowired
	ItemRepository itemRepository;
	@Autowired
	PriceRepository priceRepository;
	@Autowired
	PriceDateRepository priceDateRepository;
	
	//____-06-__
	
	@GetMapping("/items/enn")
	public String index(
			@RequestParam(name = "year2", required=false) String year2,
			@RequestParam(name = "year3", required=false) String year3,
			@RequestParam(name = "month1", required=false) String month1,
			@RequestParam(name = "today", defaultValue = "") String today,
			Model m) {
		
		String yy=null;
		String yy1=null;
		String yy2=null;
		String mm=null;
		
		List<price> list = null;
		List<priceDate> all = null;
		String mm2;
		String num;
		String num2;
		
		List<String> year1 = new ArrayList<>();//年度の獲得
		List<String> month = new ArrayList<>();//月の獲得
		
		List<String> monthPrice = new ArrayList<>();//グラフポイント
		List<String> monthToday = new ArrayList<>();//グラフラベル
		for(int year = 2020;year<=2025;year++) {
			yy1=String.valueOf(year);
			yy =yy1+"-__-__";
			list = priceRepository.findByUserIdAndTodayLike(account.getUserId(),yy);
			if(list.isEmpty()==false) {
				year1.add(yy1);
		}
	}
		m.addAttribute("year1",year1);
		
		if(year2!=null) {
			yy2=String.valueOf(year2);
			m.addAttribute("yy2",yy2);
			
			yy =yy2+"-__-__";
			List<price> item  = priceRepository.findByUserIdAndTodayLike(account.getUserId(),yy);
			all = priceDateRepository.findByUserIdAndTodayLike(account.getUserId(),yy);
			for(int i = 0 ; i<=all.size()-1;i++) {
//				mmmm= mmmm+Integer.valueOf(all.get(i).getPrice());
				monthPrice.add(all.get(i).getPrice());
				monthToday.add(all.get(i).getToday());
				}
			
			
			for(int i = 1;i<=12;i++) {
				num="0"+i;
				mm =year2+"-"+num+"-__";
				list = priceRepository.findByUserIdAndTodayLike(account.getUserId(),mm);
				if(list.isEmpty()==false) {
					month.add(num);
				}
				
				num2=Integer.toString(i);
				mm2 =year2+"-"+num2+"-__";
				list = priceRepository.findByUserIdAndTodayLike(account.getUserId(),mm2);
				if(list.isEmpty()==false) {
					month.add(num2);
					
				}
			}
			
			m.addAttribute("label",monthToday);
			m.addAttribute("point",monthPrice);
			m.addAttribute("list",item);
			m.addAttribute("month",month);
			return"mouth";
		}
		if(month1!=null) {
			System.out.println(year3);
			m.addAttribute("yy2",year3);
			for(int i = 1;i<=12;i++) {
				num="0"+i;
				mm =year3+"-"+num+"-__";
				list = priceRepository.findByUserIdAndTodayLike(account.getUserId(),mm);
				if(list.isEmpty()==false) {
					month.add(num);
				}
				
				num2=Integer.toString(i);
				mm2 =year3+"-"+num2+"-__";
				list = priceRepository.findByUserIdAndTodayLike(account.getUserId(),mm2);
				if(list.isEmpty()==false) {
					month.add(num2);
					
				}
			}
			mm =year3+"-"+month1+"-__";
			List<price> item  = priceRepository.findByUserIdAndTodayLike(account.getUserId(),mm);
			all = priceDateRepository.findByUserIdAndTodayLike(account.getUserId(),mm);
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
		
		
		
		
		
		all = priceDateRepository.findByUserId(account.getUserId());;
		for(int i = 0 ; i<=all.size()-1;i++) {
//		mmmm= mmmm+Integer.valueOf(all.get(i).getPrice());
		monthPrice.add(all.get(i).getPrice());
		monthToday.add(all.get(i).getToday());
		}
		
		m.addAttribute("label",monthToday);
        m.addAttribute("point",monthPrice);
		
        List<price> data  = priceRepository.findByUserId(account.getUserId());
        
		m.addAttribute("month",month);
		m.addAttribute("list",data);
		
		return"mouth";
	}



	
	
}

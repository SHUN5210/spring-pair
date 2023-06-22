package com.example.demo.controller;

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

import com.example.demo.entity.User;
import com.example.demo.model.Account;
import com.example.demo.repository.UserRepository;

@Controller
public class UserController {
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	Account account;
	
	@GetMapping("/login")
	public String index() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(
			@RequestParam("email") String email,
			@RequestParam("pass") String pass,
			Model m) {
		User user=null;
		List <String> list =new ArrayList<>();
		if (email.equals("")) {
			list.add("メールアドレスを入力してください");
		}
		if (pass.equals("")) {
			list.add("パスワードを入力してください");
		} 
		
		
		Optional<User> data = userRepository.findByEmailAndPassword(email,pass);
		
		if(data.isEmpty()==false) {
			user=data.get();
			account.setName(user.getName());
			account.setPass(user.getPassword());
			account.setEmail(user.getEmail());
			return "redirect:/users";
		} else {
			list.add("メールアドレとパスワードが一致しない");
		}
		
		
		m.addAttribute("list",list);
		m.addAttribute("emailt",email);
		m.addAttribute("pass",pass);
		return "login";
		
		
	//	if(CollectionUtils.isEmpty(list)) {
		

//			if(data.isEmpty()) {
//				list.add("メールアドレスとパスワードが間違っています");
//				m.addAttribute("list",list);
//				m.addAttribute("emailt",email);
//				m.addAttribute("pass",pass);
//				return "login";
//				}
//		    
		
}
	
	

	@GetMapping("/users")
	public String index(
			@RequestParam(name = "keyword", defaultValue = "") String keyword,
			Model m) {
		List<User> list = null;
		if (keyword.equals("")) {
			list=userRepository.findAll();
		}else {
			list=userRepository.findByNameLike("%"+keyword+"%");
		}
		
		m.addAttribute("keyword",keyword);
		m.addAttribute("list", list);
		return"users";
	}
	
	@GetMapping("/users/add")
	public String add1(Model m) {
		return"addUser";
	}
	@PostMapping("/users/add")
	public String add2(
			@RequestParam(name = "name", required=false) String name,
			@RequestParam(name = "email", required=false) String email,
			@RequestParam(name = "password", required=false) String password,
			Model m) {
		User user=new User(name,email,password);
		userRepository.save(user);
		return  "redirect:/users";
	}
	
	@GetMapping("/users/{id}/edit")
	public String edit(@PathVariable("id") Integer id,
			Model m) {
		User user =userRepository.findById(id).get();
		m.addAttribute("user",user);
		return"editUser";
	}
	
	@PostMapping("/users/{id}/edit")
	public String update(@PathVariable("id") Integer id,
			@RequestParam(name = "name", required=false) String name,
			@RequestParam(name = "email", required=false) String email,
			@RequestParam(name = "password", required=false) String password,
			Model m) {
		
		User user=new User(id,name,email,password);
		userRepository.save(user);
		return "redirect:/users";
	}
	
	@GetMapping("/users/{id}/delete")
	public String delete(@PathVariable("id") Integer id, 
			Model m) {
		userRepository.deleteById(id);
		return "redirect:/users";
	}
}

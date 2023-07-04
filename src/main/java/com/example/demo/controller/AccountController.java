package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Users;
import com.example.demo.repository.UsersRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class AccountController {


	@Autowired
	HttpSession session;
	
	@Autowired
	Users account;
	
	@Autowired
	UsersRepository usersRepository;

	// ログイン画面を表示
	@GetMapping({ "/", "/login", "/logout" })
	public String index(
			@RequestParam(name = "error", defaultValue = "") String error,
			Model model) {
		// セッション情報を全てクリアする
		session.invalidate();
		
//		// エラーパラメータのチェック
//		if (error.equals("notLoggedIn")) {
//			model.addAttribute("message", "ログインしてください");
//		}

		return "login";
	}

	// ログインを実行
	@PostMapping("/login")
	public String login(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			Model model) {
		//ログインチェック
		
		if(email.equals("masterChahan")&&password.equals("himitu")) {
			System.out.println(email);
			return "redirect:/admin/items";
		}
		
		
		Users users = null;
		
		Optional<Users> record = usersRepository.findByEmailAndPassword(email, password);
		
		if (record.isEmpty() == false) {
			users = record.get();
			account.setPassword(users.getPassword());
			account.setEmail(users.getEmail());
			
		}
		
		// 名前が空の場合にエラーとする
		if (users == null) {
			model.addAttribute("message", "メールアドレスとパスワードが一致しませんでした");
					return "login";
		}
		
		return "redirect:/items";

	}

}

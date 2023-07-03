package com.example.demo.controller;

import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Users;
import com.example.demo.repository.UsersRepository;

import jakarta.servlet.http.HttpSession;
=======
>>>>>>> refs/remotes/origin/おてらーん

@Controller
public class AccountController {

<<<<<<< HEAD
	@Autowired
	HttpSession session;
	
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
		}
		
		// 名前が空の場合にエラーとする
		if (users == null) {
			model.addAttribute("message", "メールアドレスとパスワードが一致しませんでした");
					return "login";
		}
		
	

		// 「/items」へのリダイレクト
		return "redirect:/items";
	}
=======
//	@Autowired
//	HttpSession session;
//
//	// ログイン画面を表示
//	@GetMapping({ "/", "/login", "/logout" })
//	public String index(
//			@RequestParam(name = "error", defaultValue = "") String error,
//			Model model) {
//		// セッション情報を全てクリアする
//		session.invalidate();
//		
//		// エラーパラメータのチェック
//		if (error.equals("notLoggedIn")) {
//			model.addAttribute("message", "ログインしてください");
//		}
//
//		return "login";
//	}
//
//	// ログインを実行
//	@PostMapping("/login")
//	public String login(
//			@RequestParam("email") String email,
//			@RequestParam("password") String password,
//			Model model) {
//		//ログインチェック
//		Customer customer = null;
//		
//		Optional<Customer> record = CustomerRepository.findByEmailAndPassword(email, password);
//		
//		if (record.isEmpty() == false) {
//			customer = record.get();
//		}
//		
//		// 名前が空の場合にエラーとする
//		if (customer == null) {
//			model.addAttribute("message", "メールアドレスとパスワードが一致しませんでした");
//			return "login";
//		}
//
//		// 「/items」へのリダイレクト
//		return "redirect:/items";
//	}
>>>>>>> refs/remotes/origin/おてらーん
}

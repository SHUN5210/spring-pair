package com.example.demo.controller;

import org.springframework.stereotype.Controller;

@Controller
public class AccountController {

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
}

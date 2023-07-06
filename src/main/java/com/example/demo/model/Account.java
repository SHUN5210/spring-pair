package com.example.demo.model;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

import lombok.Data;

@Data
@Component
@SessionScope
public class Account {
	//フィールド
	private Integer userId;
	private String email;
	private String password;

	
	//コンストラクタ
	public Account() {
		
	}


	
	
}

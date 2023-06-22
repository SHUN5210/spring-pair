package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	private Integer id; // 顧客ID

	@Getter
	private String name; // 名前

	@Getter
	private String email; // メールアドレス
	
	@Getter
	private String password; //パスワード
	// コンストラクタ
	public User() {
	}
	public User(String name, String email, String password) {
		
		this.name = name;
		this.email = email;
		this.password = password;
	}
	public User(Integer id, String name, String email, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
	}
	
}

package com.example.demo.entity;

import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;

@Data
@Entity
@Component
@Table(name = "users")
public class Users {
	@Id
	@Getter
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Integer userId;
	
	@Getter
	private String email; // メールアドレス
	
	@Getter
	private String password; // パスワード

	// コンストラクタ
	public Users() {
		
	}

	public Users(String email, String password) {
		this.email = email;
		this.password = password;
	} 
}

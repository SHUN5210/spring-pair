package com.example.demo.entity;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Component
@Table(name = "customers")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String email; // メールアドレス
	
	private String password; // パスワード

	// コンストラクタ
	public Customer() {
		
	}

	public Customer(String email, String password) {
		this.email = email;
		this.password = password;
	} 
}

package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "chahan")
public class Chahan {
	
	@Id
	@Getter
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id; // カテゴリーID

	@Getter
	private String menu;
	public Chahan() {
		
	}
	public Chahan(String menu) {
		
		this.menu = menu;
	} // カテゴリー名
	

}

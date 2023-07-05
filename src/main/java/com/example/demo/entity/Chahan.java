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
	
	@Getter
	private String name1;
	
	@Getter
	private String name2;
	
	@Getter
	private String name3;
	
	public Chahan() {
		
	}
	public Chahan(String menu) {
		
		this.menu = menu;
	}
	public Chahan(String menu, String name1, String name2, String name3) {
		this.menu = menu;
		this.name1 = name1;
		this.name2 = name2;
		this.name3 = name3;
	} // カテゴリー名
	

}

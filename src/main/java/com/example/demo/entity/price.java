package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "graph1")
public class price {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	private Integer id; // ID
	
	@Getter
	@Column(name = "user_id")
	private Integer userId;

	
	@Getter
	private String name; // 食材名
	
	
	@Getter
	private String today;//記入日
	

	@Getter
	private String price;//価格
	
	public price() {
		
	}

	public price(String name, String today, String price) {
		this.name = name;
		this.today = today;
		this.price = price;
	}

	public price(Integer userId, String name, String today, String price) {
		super();
		this.userId = userId;
		this.name = name;
		this.today = today;
		this.price = price;
	}



}

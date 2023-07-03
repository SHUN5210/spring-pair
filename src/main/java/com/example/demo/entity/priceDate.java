package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "dateprice1")
public class priceDate {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	private Integer id; // ID
	
	@Getter
	private String today;//記入日
	

	@Getter
	private String price;//価格
	
	public priceDate() {
		
	}

	public priceDate(String today, String price) {
		this.today = today;
		this.price = price;
	}

	public priceDate(Integer id, String today, String price) {
		this.id = id;
		this.today = today;
		this.price = price;
	}



}

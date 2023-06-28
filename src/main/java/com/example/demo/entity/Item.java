package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "items")
public class Item {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	private Integer id; // 食材ID

	@Column(name = "category_id")
	@Getter
	private Integer categoryId; // カテゴリーID

	@Getter
	private String name; // 食材名
	
	@Column(name = "item_id")
	@Getter
	private Integer itemId; //食品ID
	
	@Getter
	private String today;//記入日
	
	@Getter
	private String care;//賞味期限

	@Getter
	private String price;//価格
	
	public Item() {
		
	}
	
	
	
	public Item(Integer categoryId, String name) {
	
		this.categoryId = categoryId;
		this.name = name;
	
	}



	public Item(Integer categoryId, String name, String care) {
		
		this.categoryId = categoryId;
		this.name = name;
		this.care = care;
	}



	public Item(Integer categoryId, String name,Integer itemId, String today, String care, String price) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.itemId = itemId;
		this.today = today;
		this.care = care;
		this.price = price;
	}
	
	

}

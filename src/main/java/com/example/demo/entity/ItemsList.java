package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "items_list")
public class ItemsList {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Getter
	private Integer id; // 食材ID
	
	@Getter
	@Column(name = "category_id")
	private Integer categoryId; // カテゴリーID

	@Getter
	private String name; // 食材名

	public ItemsList() {
		
	}


	public ItemsList(Integer categoryId, String name) {
		this.categoryId = categoryId;
		this.name = name;
	}
}



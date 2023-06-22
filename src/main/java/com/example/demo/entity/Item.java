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

	@Getter
	private String detail;

	public Item(Integer categoryId, String name, String detail) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.detail = detail;
	} // 商品詳細

	

	

}
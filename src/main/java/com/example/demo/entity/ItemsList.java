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

	@Column(name = "category_id")
	@Getter
	private Integer categoryId; // カテゴリーID

	@Getter
<<<<<<< HEAD
	private String name; // 食材名

	public ItemsList() {
		
	}

=======
	private String name;
	
	public ItemsList() {
		
	}
>>>>>>> refs/remotes/origin/おてらーん
	public ItemsList(Integer categoryId, String name) {
		this.categoryId = categoryId;
		this.name = name;
<<<<<<< HEAD
		
	}

}
=======
	} // 食材名
	
	
	} 
>>>>>>> refs/remotes/origin/おてらーん

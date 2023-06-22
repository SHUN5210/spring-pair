package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer> {
	// SELECT * FROM items WHERE category_id = ?
	List<Item> findByCategoryId(Integer categoryId);
//	
//	List<Item>findByNameLike(String name);
//	
//	List<Item>findByPriceLessThanEqual(Integer price);
//	
//	List<Item>findByPriceLessThanEqualAndNameLike(Integer price ,String name);
	
}

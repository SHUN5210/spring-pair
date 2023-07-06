package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer> {
	// SELECT * FROM items WHERE category_id = ?
	List<Item> findByUserIdAndCategoryId(Integer userId,Integer categoryId);
	List<Item> findByUserId(Integer userId);
	List<Item> findByUserIdAndFridge(Integer userId, Integer fridge);

	List<Item> findByTodayLike(String today);
	
}

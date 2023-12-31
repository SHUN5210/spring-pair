package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.ItemsList;

public interface ItemsListRepository extends JpaRepository<ItemsList, Integer> {
	// SELECT * FROM items WHERE category_id = ?
	List<ItemsList> findByCategoryId(Integer categoryId);
	
	
	List<ItemsList> findByIdIn(List<Integer> list);
	
}

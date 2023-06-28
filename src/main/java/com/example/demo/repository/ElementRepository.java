package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Element;

public interface ElementRepository extends JpaRepository<Element, Integer> {
	// SELECT * FROM items WHERE category_id = ?
	List<Element> findByName(Integer itemId);

	
}

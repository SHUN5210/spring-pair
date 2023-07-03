package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.priceDate;


public interface PriceDateRepository extends JpaRepository<priceDate, Integer> {
	List<priceDate> findByTodayLike(String today);
	
}

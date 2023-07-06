package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.price;


public interface PriceRepository extends JpaRepository<price, Integer> {
	List<price> findByUserIdAndTodayLike(Integer userId,String today);
	List<price> findByUserId(Integer userId);
}

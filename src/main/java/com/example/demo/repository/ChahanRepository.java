package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Chahan;

public interface ChahanRepository extends JpaRepository<Chahan, Integer> {
	List <Chahan> findByIdIn(List<Integer> list);
}

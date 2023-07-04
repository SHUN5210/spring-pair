package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Fridge;

public interface FridgeRepository extends JpaRepository<Fridge, Integer> {
	Optional<Fridge> findById(Integer Id);

}

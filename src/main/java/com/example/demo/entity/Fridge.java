package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "fridge")
public class Fridge {
	@Id
	@Getter
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id; // 保管ID

	@Getter
	private String name; // 保管場所
	
public Fridge() {
		
	}
	public Fridge( String name) {
		this.name = name;
	} 

	public Fridge(Integer id, String name) {
		this.id = id;
		this.name = name;
	} 
}

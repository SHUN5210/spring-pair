package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "element")
public class Element {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "chahan_id")
	private Integer chahanId;
	
	private Integer name;
	
	public Element() {
		
	}

	public Element(Integer chahanId, Integer name) {
		
		this.chahanId = chahanId;
		this.name = name;
	
	}
	
	public Element(Integer id, Integer chahanId, Integer name) {
		
		this.id = id;
		this.chahanId = chahanId;
		this.name = name;
	
	}
	
}

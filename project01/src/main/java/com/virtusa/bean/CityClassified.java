package com.virtusa.bean;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name="cityclassified")
public class CityClassified {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(length=1000)
    private String buysell;
    @Column(length=1000)
    private String name;
    @Column(length=1000)
    private String description;
    
    
    public CityClassified() {
    	super();
    }
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBuysell() {
		return buysell;
	}
	public void setBuysell(String buysell) {
		this.buysell = buysell;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

    
}

package com.virtusa.bean;

import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="citydetails")
public class CityDetails {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(length=1000)
    private String name;
    @Column(length=1000)
    private String category;
    @Column(length=1000)
    private String email;
    @Column(length=1000)
    private String address;
    @Column(length=1000)
    private String city;
    @Column(length=1000)
    private String contact;
    
    public CityDetails() {
    	super();
    }
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
    
    
}
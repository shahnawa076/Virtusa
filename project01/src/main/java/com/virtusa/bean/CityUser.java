package com.virtusa.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cityuser")
public class CityUser {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(length=1000)
    private String name;
    @Column(length=1000)
    private String password;
    @Column(length=1000)
    private String email;
    @Column(length=1000)
    private String address;
    @Column(length=1000)
    private String country;
    @Column(length=1000)
    private String contact;
    
    public CityUser() {
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
    
}

package com.rentlist.web.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="contact")
public class Contact {
	@Id
	private int id;
	private String fullname;
	private String email;
	private String message;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(int id, String fullname, String email, String message) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.message = message;
	}
	public Contact(String fullname, String email, String message) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "Contact [id=" + id + ", fullname=" + fullname + ", email=" + email + ", message=" + message + "]";
	}
	
	
}

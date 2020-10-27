package com.Student.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserStudent {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String stud_name;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getStud_name() {
		return stud_name;
	}
	public void setStud_name(String stud_name) {
		this.stud_name = stud_name;
	}
	public String getStud_lname() {
		return stud_lname;
	}
	public void setStud_lname(String stud_lname) {
		this.stud_lname = stud_lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	private String stud_lname;
	private String email;
	private String pass;
	

}

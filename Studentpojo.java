package com.student.Springboot.Studentcrud.operation.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Studentpojo{
    
	@Id
	private int sid;
	private String name;
	private String division;
	private String mobileno;
	public Studentpojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Studentpojo(int sid, String name, String division, String mobileno) {
		super();
		this.sid = sid;
		this.name = name;
		this.division = division;
		this.mobileno = mobileno;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	@Override
	public String toString() {
		return "Studentpojo [sid=" + sid + ", name=" + name + ", division=" + division + ", mobileno=" + mobileno + "]";
	}
}

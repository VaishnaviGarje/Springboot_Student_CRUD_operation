package com.student.Springboot.Studentcrud.operation.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.student.Springboot.Studentcrud.operation.model.Studentpojo;
@Controller
public class Studentcontroller {

	@Autowired
 SessionFactory sf;
	@RequestMapping("insertstudent")
public String insertstudent() {
		return"save";
	}
 	@PostMapping("/save")
	public Studentpojo insertstudent(Studentpojo stu) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(stu);
		t.commit();
		return stu;
	}
	
	@RequestMapping("updatestudent")
	public String updatestudent() {
			return"update";
		}
	@PostMapping("/update")
	public Studentpojo updatestudent(Studentpojo stu) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.update(stu);
		t.commit();
		return stu;
	}
	@RequestMapping("deletestudent")
	public String deletepage() {
		return "delete";
	}
	
	@PostMapping("/delete")
	public String deleteData(int sid) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		Studentpojo stu =s.get(Studentpojo.class, sid);
		s.delete(stu);
		t.commit();
		return "delete";
	}
	@RequestMapping("viewtables")
	public String name() {
		return "viewtable";
	}	
}

package com.Student.controller;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

import com.Student.dao.StudentDao;
import com.Student.model.UserStudent;

@Controller
public class StudentController {
	@Autowired
	private StudentDao studentdao;
	@RequestMapping("/home")
	public String getHome(){
		return "home";
	}
	
	@RequestMapping("/addStudent")
	public String getStudentSaveForm(Model m){
	m.addAttribute("title","Student Registration Form");
	return "add_StudentDetail";	
	}
	@RequestMapping("/saveUser")
	public RedirectView getSaveStudent(@ModelAttribute UserStudent student){
		RedirectView rd = new RedirectView();
		this.studentdao.createStudent(student);
		rd.setUrl("success");
		return rd;
	}
	@RequestMapping("/success")
	public String setSuccessMsg(Model m){
		m.addAttribute("title","Save Student");
		return "successMsg";
	}
	@RequestMapping("/viewAllStudent")
	public String getStudentList(Model m){
		List<UserStudent> li = this.studentdao.getListStudent();
		m.addAttribute("student",li);
		return "ViewStudentList";
	}
	@RequestMapping("/updateStudent/{id}")
	public String getUpdateStudent(@PathVariable("id") long id,Model m){
		UserStudent stud = this.studentdao.getStudent(id);
		m.addAttribute("student",stud);
		return "updateForm";
		
	}
	@RequestMapping("/deleteStudent/{id}")
	public RedirectView deleteStudent(@PathVariable("id") long id,HttpServletRequest request){
		this.studentdao.deleteStudent(id);
		RedirectView rd = new RedirectView();
		rd.setUrl(request.getContextPath()+"/viewAllStudent");
		return rd;
	}
    @RequestMapping("/error")	
	public String getError(Exception ex,Model m){
		m.addAttribute("ex",ex);
		return "error";
	}
	
	
}

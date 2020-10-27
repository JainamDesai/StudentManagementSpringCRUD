package com.Student.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Student.model.UserStudent;

@Component
@Repository
public class StudentDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Transactional(value="transaction")
	public void createStudent(UserStudent student){
		this.hibernateTemplate.saveOrUpdate(student);
	}
	public List<UserStudent> getListStudent(){
		return this.hibernateTemplate.loadAll(UserStudent.class);
	}
	@Transactional(value="transaction")
	public void deleteStudent(long id){
	   UserStudent student = this.hibernateTemplate.get(UserStudent.class, id);
	   this.hibernateTemplate.delete(student);
	}
	public UserStudent getStudent(long id){
		UserStudent stud = this.hibernateTemplate.get(UserStudent.class, id);
		return stud;
	}
}

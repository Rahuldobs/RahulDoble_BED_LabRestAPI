package com.greatlearning.studentregistration.service;

import java.util.List;

import com.greatlearning.studentregistration.entity.Students;

public interface StudentService {

	public List<Students> findAll();
	
	public Students findById(int id);
	
	public void save (Students students);
	
	public void deleteById(int id);
	
	public List<Students> searchBy(String firstName);

}

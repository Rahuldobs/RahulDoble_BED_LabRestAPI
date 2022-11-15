package com.greatlearning.studentregistration.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.greatlearning.studentregistration.entity.Students;
import com.greatlearning.studentregistration.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public List<Students> findAll() {

		return studentRepository.findAll();

	}

	@Override
	public Students findById(int id) {
		return studentRepository.findById(id).get();
	}

	@Override
	public void save(Students students) {
		studentRepository.save(students);
	}

	@Override
	public void deleteById(int id) {
		studentRepository.deleteById(id);
	}

	@Override
	public List<Students> searchBy(String firstName) {
		return studentRepository.findByFirstNameContainsAllIgnoreCase(firstName);
	}

}

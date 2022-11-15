package com.greatlearning.studentregistration.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greatlearning.studentregistration.entity.Students;

@Repository
public interface StudentRepository extends JpaRepository<Students, Integer> {

	List<Students> findByFirstNameContainsAllIgnoreCase(String firstName);
}

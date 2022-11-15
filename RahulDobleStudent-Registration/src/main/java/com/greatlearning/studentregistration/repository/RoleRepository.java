package com.greatlearning.studentregistration.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.greatlearning.studentregistration.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}

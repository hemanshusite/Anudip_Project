package com.rentlist.web.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.rentlist.web.model.User;
@EnableJpaRepositories
@Repository
public interface userRepository extends JpaRepository<User, Integer> {
	@Query("select e from user e where username = ?1 And password= ?2")
	public User logIn(String uname, String pass);
	
//	public User findByUsername(String uname);
}

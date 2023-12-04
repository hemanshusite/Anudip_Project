package com.rentlist.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.rentlist.web.model.Contact;
@EnableJpaRepositories
@Repository
public interface contactRepo extends JpaRepository<Contact, Integer> {
	
}

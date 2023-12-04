package com.rentlist.web.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import com.rentlist.web.model.add_Property;
@EnableJpaRepositories
@Repository
public interface addPropertyRepo extends JpaRepository<add_Property, Integer> {
	@Query(value="select * from add_property where id = ?1",nativeQuery=true)
	add_Property findById(String propertyId);

	
}

package com.rentlist.web.serviceInterface;

import java.util.List;

import com.rentlist.web.model.add_Property;

public interface addPropertyServiceInterface {
	public List<add_Property> getAllProperties();
	// Three things to do
	public add_Property getPropertyById(String propid);
	public void deleteById(int id);
	public void updateProperty(int id,add_Property upProp);
	// Searching Property
}

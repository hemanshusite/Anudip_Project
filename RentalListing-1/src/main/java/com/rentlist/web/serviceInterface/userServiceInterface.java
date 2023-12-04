package com.rentlist.web.serviceInterface;

import java.util.List;

import com.rentlist.web.model.User;

public interface userServiceInterface {
	public List<User> getUsers();

	// Signup
	public boolean signUp(User u);

	// Login
	public User login(String uname, String pass);
	
//	public User getByUname(String uname);
}

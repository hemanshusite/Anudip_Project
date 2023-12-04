package com.rentlist.web.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rentlist.web.dao.userRepository;
import com.rentlist.web.model.User;
import com.rentlist.web.serviceInterface.userServiceInterface;

@Service
public class userService implements userServiceInterface {
	
	@Autowired
	private userRepository ur;
	

	@Override
	public List<User> getUsers() {
		Iterable<User> it = ur.findAll();
		Iterator<User> itr = it.iterator();
		List<User> list = new ArrayList<User>();
		while (itr.hasNext()) {
			list.add(itr.next());

		}
		return list;
	}
	
	// Signup
	@Override
	public boolean signUp(User u) {
		ur.save(u);
		return true;
	}

	
	
	// Login
	
	@Override
	public User login(String uname, String pass) {
		return ur.logIn(uname, pass);
	}
	
//	@Override
//	public User getByUname(String uname) {
//		return ur.findByUsername(uname);
//	}
	
	
	
	
	
}

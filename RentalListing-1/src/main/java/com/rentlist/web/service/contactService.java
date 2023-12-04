package com.rentlist.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rentlist.web.dao.contactRepo;
import com.rentlist.web.model.Contact;
import com.rentlist.web.serviceInterface.contactServiceInterface;

@Service
public class contactService implements contactServiceInterface {
	@Autowired
	private contactRepo cr;

	@Override
	public boolean contact(Contact c) {
		cr.save(c);
		return true;
	}
	
	
}

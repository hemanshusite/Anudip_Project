package com.rentlist.web.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.rentlist.web.dao.addPropertyRepo;
import com.rentlist.web.model.add_Property;
import com.rentlist.web.serviceInterface.addPropertyServiceInterface;

@Service
public class addPropertyService implements addPropertyServiceInterface {
	@Autowired
	private addPropertyRepo ar;
	public void Save(add_Property ad,MultipartFile imageFile) {
		try {
			byte[] img= imageFile.getBytes();
			ad.setImage(img);
			ar.save(ad);
			}
			catch (IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		
	}
	
	public List<add_Property> getAllProperties() {
        return ar.findAll();
	}

	// Three things to do
	@Override
	public add_Property getPropertyById(String propid) {
		return ar.findById(propid);
	}

	@Override
	public void deleteById(int id) {
		Optional<add_Property> opt =ar.findById(id);
		if(!opt.isEmpty()) {
			ar.deleteById(id);
		}
	}

	@Override
	public void updateProperty(int id, add_Property up) {
		Optional<add_Property> optionalProperty = ar.findById(id);
	        if (optionalProperty.isPresent()) {
	        	add_Property ep = optionalProperty.get();

	        	ep.setName(up.getName());
	        	ep.setEmail(up.getEmail());
	        	ep.setPhone(up.getPhone());
	        	ep.setTitle(up.getTitle());
	        	ep.setDescription(up.getDescription());
	        	ep.setAddress(up.getAddress());
	        	ep.setPrice(up.getPrice());
	        	ep.setStatus(up.getStatus());
	            ar.save(ep); 
	        }
	}

	
	
	
	
	
}

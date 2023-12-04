package com.rentlist.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rentlist.web.model.add_Property;
import com.rentlist.web.service.addPropertyService;

@Controller
public class addPropertyController {
	@Autowired
	private addPropertyService aps;

	@PostMapping("/addProperty")
	public String addProp(@RequestParam("prop_type") String prop_type, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("owner") String owner,
			@RequestParam("phone") String phone, @RequestParam("title") String title,
			@RequestParam("description") String description, @RequestParam("choice") String choice,
			@RequestParam("address") String address, @RequestParam("image") MultipartFile imgfile,
			@RequestParam("price") String price, @RequestParam("status") String status) {

		add_Property ap = new add_Property();
		ap.setProp_type(prop_type);
		ap.setName(name);
		ap.setEmail(email);
		ap.setPhone(phone);
		ap.setTitle(title);
		ap.setChoice(choice);
		ap.setDescription(description);
		ap.setAddress(address);
		ap.setPrice(price);
		ap.setOwner(owner);
		ap.setStatus(status);
		aps.Save(ap, imgfile);
		return "index";
	}

	@GetMapping("/propertyview")
	public String getAllProperty( Model model) {
		List<add_Property> prop = aps.getAllProperties();

		if (prop != null) {
			model.addAttribute("viewproperty", prop);
		} else {
			
			// Handle the case where prop is null, e.g., set an empty list
			
		}

		return "view_prop";
	}
	
	@GetMapping("/showDetails")
	public String getPropertyDetails(@RequestParam("id") String propertyId, Model model) {

		add_Property property = aps.getPropertyById(propertyId);
		model.addAttribute("showDetails", property);

		return "showDetails";
	}

	// Three things to do
	@GetMapping("/editProperty")
	public String getPropertyEdit(@RequestParam("id") String propertyId, Model model) {

		add_Property property = aps.getPropertyById(propertyId);
		model.addAttribute("editProperty", property);

		return "editProperty";
	}

	@GetMapping("deleteProperty/{id}")
	public String deleteprop(@PathVariable("id") int id) {
		aps.deleteById(id);
		return "redirect:/propertyview";
	}

	@PostMapping("/edit")
	public String editProperty(@ModelAttribute add_Property updatedProperty) {
		aps.updateProperty(updatedProperty.getId(), updatedProperty);
		return "redirect:/propertyview";
	}
	

	
}

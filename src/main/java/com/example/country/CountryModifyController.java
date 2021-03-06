package com.example.country;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.country.service.CountrySearchService;
import com.example.domain.Country;
import com.example.form.CountryForm;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/country")
public class CountryModifyController {

//	static Log log = LogFactory.getLog(CountryModifyController.class);
//	
//	@Autowired
//	CountrySearchService countrySearchService;
//
//	@Autowired
//	CountryModifyService countryModifyService;
//
//	@GetMapping("/modify/{id}")
//	public String modifyForm(CountryForm countryForm, @PathVariable int id) {
//		log.info("modifyForm(" + id + ")");
//		Country Country = countrySearchService.getCountryById(id);
//		countryForm.setCountry(country);
//		
//		return "country/modifyForm";
//	}
//	
//	@PostMapping("/modify")
//	public String modify(@Valid CountryForm countryForm, BindingResult errors, Integer pageNo) {
//		log.info("modify(" + countryForm + ")");
//		System.out.println(countryForm);
//		
//		if (errors.hasErrors()) {
//			System.out.println(errors);
//			return "country/modifyForm";
//		}
//		
//		countryModifyService.modify(countryForm, errors);
//		
//		if (errors.hasErrors()) {
//			System.out.println(errors);
//			return "country/modifyForm";
//		}
//		
//		return "redirect:/country/modifySuccess/" + countryForm.getId() + "?pageNo=" + pageNo;
//	}
//	
//	@GetMapping("/modifySuccess/{id}")
//	public String modifySucess(@PathVariable int id, Model model) {
//		Country country = countrySearchService.getCountryById(id);
//		model.addAttribute("country", country);
//		return "country/modifySuccess";
//	}

	
	
}





package com.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coding.entity.Personne;
import com.coding.service.IpersersonneService;

@Controller
public class PersonneController {
	
	@Autowired
	IpersersonneService service;
	
	@RequestMapping("/afficherPersonnes")
	public String afficherPersonnes(Model model)
	{
		List<Personne> liste= service.selectAll();
		model.addAttribute("personnes", liste);
		
		return "personneJsp";
		
	}

}

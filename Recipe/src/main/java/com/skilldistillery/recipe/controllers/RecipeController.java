package com.skilldistillery.recipe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.recipe.data.RecipeDAO;

@Controller
public class RecipeController {
	@Autowired
	private RecipeDAO recipeDAO;
	
	@RequestMapping(path= {"/","home.do"})
	public String goHome(Model model) {
		model.addAttribute("recipes",recipeDAO.findAll());
		return "home";	
	}
}

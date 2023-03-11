package com.skilldistillery.recipe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.recipe.data.RecipeDAO;
import com.skilldistillery.recipe.entities.Recipe;

@Controller
public class RecipeController {
	@Autowired
	private RecipeDAO recipeDAO;
	
	@RequestMapping(path= {"/","home.do"})
	public String goHome(Model model) {
		return "home";	
	}
	@RequestMapping(path= {"recipes.do"})
	public String viewRecipes(Model model) {
		model.addAttribute("recipes",recipeDAO.findAll());
		return "recipes";	
	}
	@RequestMapping(path= {"createdrecipe.do"})
	public String addRecipes(Model model,Recipe recipe) {
		Recipe createdRecipe = recipeDAO.create(recipe);
		if (createdRecipe != null) {
			model.addAttribute("recipe",createdRecipe);
			return "createdrecipe";
		}else {
			return null;
		}
	}
}

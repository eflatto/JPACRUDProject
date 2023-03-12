package com.skilldistillery.recipe.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.recipe.data.RecipeDAO;
import com.skilldistillery.recipe.entities.Recipe;

@Controller
public class RecipeController {
	@Autowired
	private RecipeDAO recipeDAO;
	
	@RequestMapping(path= {"/","home.do"})
	public String goHome(Model model) {
		try {
			Long count = recipeDAO.count();
			model.addAttribute("recipes",recipeDAO.findAll());
			model.addAttribute("count",count);

			return "home";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}	
	}
	
	
	@RequestMapping(path= {"deleteform.do"})
	public String deleteForm(Model model) {
		try {
			return "delete";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return"error";
		}	
	}
	@RequestMapping(path= {"updateform.do"})
	public String updateForm(Model model) {
		return "update";	
	}
	@RequestMapping(path= {"recipesform.do"})
	public String goToRecipeForm (Model model) {
		return "addrecipesform";	
	}
	@RequestMapping(path= {"show.do"})
	public String goToRecipeFor (Model model,Recipe recipe) {
		Recipe rec = recipeDAO.findById(recipe.getId());
		model.addAttribute("recipe",rec );
		return "show";	
	}
	
	@RequestMapping(path= {"keyword.do"})
	public String searchByKeyword(Model model, String keyword) {
	    List<Recipe> recipes = recipeDAO.searchByKeyword(keyword);
	    model.addAttribute("recipe", recipes);
	    return "keyword";
	}

	
	
	@RequestMapping(path= {"createdrecipe.do"})
	public String addRecipes(Model model,Recipe recipe) {
		Recipe createdRecipe = recipeDAO.create(recipe);
		if (createdRecipe != null) {
			model.addAttribute("recipe",createdRecipe);
			return "createdrecipe";
		}else {
			return "error";
		}
	}
	
	@RequestMapping(path = "updaterecipeform.do", method = RequestMethod.GET)
	public String updateRecipeForm(Model model, Integer id, Recipe updated) {
		try {
			Recipe recipe = recipeDAO.findById(id);
			model.addAttribute(recipe);

			return "updaterecipe";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}

	}
	@RequestMapping(path="updatedrecipe.do",method = RequestMethod.POST)
	public String updateRecipes(Model model,Recipe recipe) {
		Recipe updatedRecipe = recipeDAO.update(recipe.getId(),recipe);
		if (updatedRecipe != null) {
			model.addAttribute("recipe",updatedRecipe);
			return "createdrecipe";
		}else {
			return "error";
		}
	}
	@RequestMapping(path="deleterecipe.do",method = RequestMethod.POST)
	public String deleteRecipe(Model model,Recipe recipe) {
		Recipe rec = recipeDAO.findById(recipe.getId());
		boolean deleted = recipeDAO.deleteById(recipe.getId());
		if (deleted) {
			model.addAttribute("message",rec.getName()  + " deleted successfully.");
		}else {
			model.addAttribute("message","Failed to delete "+ rec.getName());
			
		}
		return "deletedMessage";
	}
	
}

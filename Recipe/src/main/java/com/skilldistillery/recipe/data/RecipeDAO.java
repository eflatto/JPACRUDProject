package com.skilldistillery.recipe.data;

import java.util.List;

import com.skilldistillery.recipe.entities.Recipe;

public interface RecipeDAO {
	Recipe findById(int recipeId);
	List<Recipe> findAll();
	Recipe create(Recipe recipe);
	Recipe update(int recipeId, Recipe recipe);
	
	List<Recipe> searchByKeyword(String keyword);

	boolean deleteById(int id);
	
	public long count();

}

package com.skilldistillery.recipe.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.recipe.entities.Recipe;

@Service
@Transactional
public class RecipeDAOImpl implements RecipeDAO {
	
	@PersistenceContext
	private EntityManager em;
	@Override
	public Recipe findById(int recipeId) {
		// TODO Auto-generated method stub
		return em.find(Recipe.class, recipeId);
	}

	@Override
	public List<Recipe> findAll() {
		// TODO Auto-generated method stub
		String jpql="SELECT recipe FROM Recipe recipe";
		return em.createQuery(jpql,Recipe.class).getResultList();
	}

	@Override
	public Recipe create(Recipe recipe) {
		em.persist(recipe);
		return recipe;
	}

	@Override
	public Recipe update(int recipeId, Recipe recipe) {
		
		Recipe managed = em.find(Recipe.class, recipeId);
		managed.setName(recipe.getName());
	    managed.setImageURL(recipe.getImageURL());
	    managed.setDescription(recipe.getDescription());
	    managed.setIngredients(recipe.getIngredients());
	    managed.setInstructions(recipe.getInstructions());
	    managed.setServings(recipe.getServings());
	    managed.setCookTime(recipe.getCookTime());
	    managed.setPrepTime(recipe.getPrepTime());
	 
		return managed;
	}

	@Override
	public boolean deleteById(int id) {
	    Recipe recipe = em.find(Recipe.class, id);
	    if (recipe != null) {
	        em.remove(recipe);
	        return true;
	    }
	    return false;
	}


}

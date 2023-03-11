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
		// TODO Auto-generated method stub
		em.persist(recipe);
		return recipe;
	}

	@Override
	public Recipe update(int recipeId, Recipe recipe) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Recipe deleteById(int ids) {
		// TODO Auto-generated method stub
		return null;
	}

}

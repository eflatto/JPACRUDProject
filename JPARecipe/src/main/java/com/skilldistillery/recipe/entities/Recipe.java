package com.skilldistillery.recipe.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "recipe")
public class Recipe {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	@Column(name="image_url")
	private String imageURL;
	
	private String description;
	
	private String ingredients;
	
	
	private String instructions;
	

	private Integer servings;
	
	@Column(name="cook_time")
	private Integer cookTime;
	
	@Column(name="prep_time")
	private Integer prepTime;

	public Recipe() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

	public Integer getServings() {
		return servings;
	}

	public void setServings(Integer servings) {
		this.servings = servings;
	}

	public Integer getCookTime() {
		return cookTime;
	}

	public void setCookTime(Integer cookTime) {
		this.cookTime = cookTime;
	}

	public Integer getPrepTime() {
		return prepTime;
	}

	public void setPrepTime(Integer prepTime) {
		this.prepTime = prepTime;
	}

	@Override
	public String toString() {
		return "Recipe [id=" + id + ", name=" + name + ", imageURL=" + imageURL + ", description=" + description
				+ ", ingredients=" + ingredients + ", instructions=" + instructions + ", servings=" + servings
				+ ", cookTime=" + cookTime + ", prepTime=" + prepTime + "]";
	}
	

}
		
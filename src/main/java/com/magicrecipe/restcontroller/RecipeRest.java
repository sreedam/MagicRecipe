package com.magicrecipe.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.magicrecipe.service.RecipeService;

@RestController
public class RecipeRest {
	
	@Autowired
	private RecipeService recipeService;
	 //get specific USER ID
	//GET /users
    @GetMapping(path = "/recipe/{ingredients}/{p}")
    public List<?> retrieveAllingredients(@PathVariable String ingredients,@PathVariable int p)
    {
        return this.recipeService.getResultsByRecipe(ingredients,ingredients, p);
    }

}

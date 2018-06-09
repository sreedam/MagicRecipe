package com.magicrecipe.service;

import java.util.List;

import com.magicrecipe.model.Result;

public interface RecipeService {

	List<Result> getResultsByRecipe(String recipe,String query,int pageno);
	
//	Flux<Result> getResultsFromRecipient(String recipient);

}

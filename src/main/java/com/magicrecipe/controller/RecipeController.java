package com.magicrecipe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.magicrecipe.model.Result;
import com.magicrecipe.service.RecipeService;

@Controller
public class RecipeController {

	@Autowired
	private RecipeService recipeService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage() {
		return "recipesearch";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String shows(Model model, @RequestParam(name = "ingredients", required = true) String ingredients) {

		for (final Result ft : this.recipeService.getResultsByRecipe(ingredients))
			System.out.println(ft.getHref());

		model.addAttribute("results", this.recipeService.getResultsByRecipe(ingredients));

		return "searchresult";
	}
}

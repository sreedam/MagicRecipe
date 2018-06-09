package com.magicrecipe.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.magicrecipe.service.RecipeService;

@Controller
public class RecipeController {

	@Autowired
	private RecipeService recipeService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage() {
		return "recipesearch";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String shows(Model model, @RequestParam(name = "p", required = true) int p,
			@RequestParam(name = "ingredients", required = true) String ingredients, HttpServletRequest request) {

		model.addAttribute("ingredients", ingredients);
		model.addAttribute("results", this.recipeService.getResultsByRecipe(ingredients,ingredients, p));

		return "searchresult";
	}

}

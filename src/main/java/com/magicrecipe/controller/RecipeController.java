package com.magicrecipe.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
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
	public String shows(Model model, @RequestParam(name = "ingredients", required = true) String ingredients,HttpServletRequest request) {

		final List<Result> results = this.recipeService.getResultsByRecipe(ingredients);
			
		
		
		
		final PagedListHolder<?> pagelist = new PagedListHolder<Result>(results);
		
		   final int page = ServletRequestUtils.getIntParameter(request, "p", 0);

			pagelist.setPage(page);
			pagelist.setPageSize(10);
			model.addAttribute("pagedListHolder", pagelist);
		
		
		System.out.println("Results is ::::"+results.size());
		

		model.addAttribute("results", this.recipeService.getResultsByRecipe(ingredients).subList(0,10));

		return "searchresult";
	}
	
	
	
	
	
}

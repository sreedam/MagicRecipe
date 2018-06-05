package com.magicrecipe.recipeService;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.magicrecipe.model.Result;
import com.magicrecipe.service.RecipeService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RecipeTest {
	
	//Running the test case for searching the recipes
	@Autowired
	RecipeService recipeService;
	
	@Before
	public void setUp()throws Exception
	{
		
	}

	@Test
	public void testRecipes()throws Exception
	{
		final List<Result> list = recipeService.getResultsByRecipe("potato,chips",2);
		
//		assertFalse(list.iterator().hasNext());
//		assertFalse(list.iterator().hasNext());
		assertEquals(10, list.size());  //checking the size
		
		
	}
}

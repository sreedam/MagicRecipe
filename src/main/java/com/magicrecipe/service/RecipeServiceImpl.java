package com.magicrecipe.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.magicrecipe.model.Recipe;
import com.magicrecipe.model.Result;

@Service
public class RecipeServiceImpl implements RecipeService {

	private final RestTemplate restTemplate;
	
	private final String api_url;

	public RecipeServiceImpl(RestTemplate restTemplate,@Value("$(api.url)")String api_url) {
		// TODO Auto-generated constructor stub
		this.restTemplate = restTemplate;
		System.out.println("Url api"+api_url);
		this.api_url=api_url;
	}

	@Override
	public List<Result> getResultsByRecipe(String search) {
		
//		
//		UriComponentsBuilder uriComponentsBuilder = UriComponentsBuilder.fromUriString(api_url);
//		uriComponentsBuilder.queryParam("i",search);
//		uriComponentsBuilder.queryParam("q","");
//		uriComponentsBuilder.queryParam("p","2");
		// TODO Auto-generated method stub
		final List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();

		final MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter(); // Adding
																											// the
																											// Jackson
																											// Message
																											// converter
																											// based
																											// on
																											// the
																											// requiremnets

		converter.setSupportedMediaTypes(Arrays.asList(MediaType.ALL));
		messageConverters.add(converter);
		
		
		this.restTemplate.setMessageConverters(messageConverters);

		final Recipe recipe = this.restTemplate.getForObject(api_url+"/?i=" + search,
				Recipe.class);
		System.out.println("Title is :::" + recipe.getTitle());

		System.out.println(recipe.getResults().size());
		return recipe.getResults();
	}

}

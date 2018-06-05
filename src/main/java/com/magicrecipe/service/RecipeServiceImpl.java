package com.magicrecipe.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.client.WebClient;

import com.magicrecipe.model.Recipe;
import com.magicrecipe.model.Result;

import reactor.core.publisher.Flux;

@Service
public class RecipeServiceImpl implements RecipeService {

	private final RestTemplate restTemplate;

	public RecipeServiceImpl(RestTemplate restTemplate) {
		// TODO Auto-generated constructor stub
		this.restTemplate = restTemplate;
	}

	@Override
	public List<Result> getResultsByRecipe(String search) {
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

		final Recipe recipe = this.restTemplate.getForObject("http://www.recipepuppy.com/api/?i=" + search,
				Recipe.class);
		for(final Map.Entry<String, Object> gt : recipe.getAdditionalProperties().entrySet())
			System.out.println(gt.getKey()+", "+gt.getValue());
		System.out.println(recipe.getResults().size());
		return recipe.getResults();
	}

	
	
	
	@Override
	public Flux<Result> getResultsFromRecipient(String recipient) {
		// TODO Auto-generated method stub
		
		
		return WebClient.create("http://www.recipepuppy.com/api/?i="+recipient).get()
				.accept(MediaType.APPLICATION_JSON)
				.exchange()
				.flatMap(resp->resp.bodyToMono(Recipe.class))
				.flatMapIterable(Recipe::getResults);
	}

}

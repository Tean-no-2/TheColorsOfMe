package com.tjoeun.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tjoeun.spring.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	SearchService searchService;

	
	  @RequestMapping("/searchList") 
	  public String searchList(@RequestParam("product_name") String product_name,  
			  					Model model) { 
		  model.addAttribute("product_name",product_name);
		  
		 
	  
	  
	  searchService.getSearchList(product_name); 
		  return"search/searchList";
	  
	  }
	 

	
	 
//	 @GetMapping("/search") public String main() { return "search/searchList"; }
	 
	
}

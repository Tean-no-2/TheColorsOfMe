package com.tjoeun.spring.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.tjoeun.spring.beans.ProductDTO;
import com.tjoeun.spring.dao.SearchDAO;

@Service
public class SearchService {
	
	@Autowired
	SearchDAO searchDao;
	
	@Resource(name="productBean")
	@Lazy
	private ProductDTO productBean;
	
	public List<ProductDTO> getSearchList(String product_name){
		return searchDao.getSearchList(product_name);
	}
	
	
	
	
	
	
	

}

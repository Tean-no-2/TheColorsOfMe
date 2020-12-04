package com.tjoeun.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tjoeun.spring.beans.ProductDTO;

@Repository
public class SearchDAO {
	
	@Autowired
	private SqlSession sqlSessionTemplate;
	
	public List<ProductDTO> getSearchList(String product_name){
		return sqlSessionTemplate.selectList("search.getSearchList", product_name);
	}
	
	

}

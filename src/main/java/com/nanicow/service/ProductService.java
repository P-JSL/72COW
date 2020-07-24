package com.nanicow.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanicow.domain.Criteria;
import com.nanicow.domain.FeesVO;
import com.nanicow.domain.ProductVO;
import com.nanicow.domain.UsersVO;
import com.nanicow.mapper.ProductMapper;

@Service
public class ProductService {
	
	@Autowired
	private ProductMapper mapper;
	
	public List<ProductVO> product_top4(){
		
		return mapper.product_top4();
	}
	
	public List<FeesVO> list(Map<String, Object> map){
		
		return mapper.list(map);
	}
	
	
	public List<UsersVO> SellerList(){
		
		return mapper.SellerList();
	}
	
	public int productcount(String userid) {
		
		return mapper.productcount(userid);
	}
	
	public List<ProductVO> productList(){
		
		return mapper.productList();
	}
	public List<ProductVO> Allproduct() {

		return mapper.Allproduct();
	}
	
	
	//유저측
	public List<ProductVO> list(Criteria cri){
		return mapper.list2(cri);
	}
	
	public void register(ProductVO product) {
		mapper.register(product);

	}

	public ProductVO read(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean modify(ProductVO product) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean remove(int num) {
		// TODO Auto-generated method stub
		return false;
	}

	public void viewCount(int num) {
		// TODO Auto-generated method stub

	}

	public int count(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}
}

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

	public List<ProductVO> product_top4() {

		return mapper.product_top4();
	}

	public List<FeesVO> list(Map<String, Object> map) {

		return mapper.list(map);
	}

	public List<UsersVO> SellerList() {

		return mapper.SellerList();
	}

	public int productcount(String userid) {

		return mapper.productcount(userid);
	}

	public List<ProductVO> productList() {

		return mapper.productList();
	}

	public List<ProductVO> Allproduct() {

		return mapper.Allproduct();
	}

	// 유저측
	public List<ProductVO> list(Criteria cri) {
		return mapper.list2(cri);
	}

	public void register(ProductVO product) {
		mapper.register(product);

	}
	public List<ProductVO> productlist() {

		return mapper.productlist();
	}

	
	 
	public List<ProductVO> getMainAllList() {
		return mapper.getMainAllList() ;
	}

	 
	public List<ProductVO> getsofaList() {
		// TODO Auto-generated method stub
		return mapper.getsofaList();
	}

	 
	public List<ProductVO> getlivingList() {
		// TODO Auto-generated method stub
		return mapper.getlivingList();
	}

	 
	public List<ProductVO> getfoodList() {
		// TODO Auto-generated method stub
		return mapper.getfoodList();
	}

	 
	public List<ProductVO> getclothList() {
		// TODO Auto-generated method stub
		return mapper.getclothList();
	}

	 
	public List<ProductVO> getbookList() {
		// TODO Auto-generated method stub
		return mapper.getbookList();
	}

	 
	public List<ProductVO> getotherList() {
		// TODO Auto-generated method stub
		return mapper.getotherList();
	}

	 
	public List<ProductVO> getAllList(String path) {
		// TODO Auto-generated method stub
		return mapper.getAllList(path);
	}

	 
	public List<ProductVO> getSearchList(String search) {
		// TODO Auto-generated method stub
		return mapper.getSearchList(search);
	}
	
	public List<String> getSellerList(Map<String, Object> map){
		return mapper.getSellerList(map);
	}
	public int numsel(Map<String, Object> map) {
		return mapper.numsel(map);
	}
	
	public ProductVO oneList(int num) {
		return mapper.oneList(num);
	}
}

package com.nanicow.mapper;

import java.util.List;
import java.util.Map;

import com.nanicow.domain.Criteria;
import com.nanicow.domain.FeesVO;
import com.nanicow.domain.ProductVO;
import com.nanicow.domain.UsersVO;

public interface ProductMapper {

	public List<ProductVO> product_top4();
	
	public List<FeesVO> list(Map<String,Object> map);
	
	public List<UsersVO> SellerList();
	
	public int productcount(String userid);
	
	public List<ProductVO> productList();
	
	//관리자 이미지
	public List<ProductVO> Allproduct();
	
	//유저측
	public List<ProductVO> productlist();
	public List<ProductVO> list2(Criteria cri);
	public void register(ProductVO product);
	public ProductVO read(Criteria cri);
	public boolean modify(ProductVO product);
	public boolean remove(int num); 
	public void viewCount(int num);
	public int count(Criteria cri);
	
	//유저 카테고리
	public List<ProductVO> getMainAllList();//전체
	public List<ProductVO> getsofaList();//가구
	public List<ProductVO> getlivingList();//생활용품
	public List<ProductVO> getfoodList();//음식
	public List<ProductVO> getclothList();//의류
	public List<ProductVO> getbookList();//책
	public List<ProductVO> getotherList();//소노타
	public List<ProductVO> getAllList(String path); //모든리스트
	
	
	public List<ProductVO> getSearchList(String search);
	
	public List<String> getSellerList(Map<String,Object> map);
	
	public int numsel(Map<String, Object> map);
	
	public ProductVO oneList(int num);
}

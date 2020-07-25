package com.nanicow.mapper;

import java.util.List;

import com.nanicow.domain.ProductVO;
import com.nanicow.domain.UsersVO;

public interface MypageMapper {

	public UsersVO getUser(String Userid);
	public List<ProductVO> getgoods(String Userid);
	public List<ProductVO> getSoldout(String Userid);
	public int Mcount(String Userid);
	public int Scount(String Userid);
	public void GoodsDelete(int num);
	public void profileModify(UsersVO uvo);
	public void outmember(String userid);
}

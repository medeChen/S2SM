package com.chen.service;

import java.util.List;

import com.chen.model.Goods;
import com.chen.model.Shop;
import com.chen.model.Tag;
import com.chen.model.User;

public interface UserService {
	boolean register(User u);

	User login(User u);

	List<Shop> getshoplist();

	List<Goods> getgoodslist();

	List<Goods> getreclist();

	List<Goods> gethotlist();

	List<Tag> getgoodstag();
	 
	boolean check(String mail);

	void updateuser(String user_name,String user_mail, String user_pno, String head,String user_id);
	
}

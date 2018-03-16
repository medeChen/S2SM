package com.chen.dao;

import java.util.List;

import com.chen.model.Goods;
import com.chen.model.Shop;
import com.chen.model.Tag;
import com.chen.model.User;

public interface UserDao {
	User login(User u);

	int register(User u);

	List<Shop> getshoplist();

	List<Goods> getgoodslist();

	List<Goods> getreclist();

	List<Goods> gethotlist();

	List<Tag> getgoodstag();
	
	int check(String mail);

	void updateuser(String user_name,String user_mail, String user_pno,String head, String user_id);
}

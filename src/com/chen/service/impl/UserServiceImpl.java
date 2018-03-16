package com.chen.service.impl;

import java.util.List;

import com.chen.dao.UserDao;
import com.chen.model.Goods;
import com.chen.model.Shop;
import com.chen.model.Tag;
import com.chen.model.User;
import com.chen.service.UserService;

public class UserServiceImpl implements UserService {
	List<Shop> shoplist;
	List<Goods> goodslist;
	List<Goods> reclist;
	List<Goods> hotlist;
	List<Tag> goodstag;
	UserDao mapper;

	public UserDao getMapper() {
		return mapper;
	}

	public void setMapper(UserDao mapper) {
		this.mapper = mapper;
	}

	@Override
	public boolean register(User u) {
		int a = mapper.register(u);
		if (a != 1) {
			return false;
		}
		return true;
	}

	@Override
	public User login(User u) {
		u = mapper.login(u);
		return u;
	}

	@Override
	public List<Shop> getshoplist() {
		return shoplist;
	}

	@Override
	public List<Goods> getgoodslist() {
		return goodslist;
	}

	@Override
	public List<Goods> getreclist() {
		return reclist;
	}

	@Override
	public List<Goods> gethotlist() {
		return hotlist;
	}

	@Override
	public List<Tag> getgoodstag() {
		return goodstag;
	}

	public List<Shop> getShoplist() {
		return shoplist;
	}

	public void setShoplist(List<Shop> shoplist) {
		this.shoplist = shoplist;
	}

	public List<Goods> getGoodslist() {
		return goodslist;
	}

	public void setGoodslist(List<Goods> goodslist) {
		this.goodslist = goodslist;
	}

	public List<Goods> getReclist() {
		return reclist;
	}

	public void setReclist(List<Goods> reclist) {
		this.reclist = reclist;
	}

	public List<Goods> getHotlist() {
		return hotlist;
	}

	public void setHotlist(List<Goods> hotlist) {
		this.hotlist = hotlist;
	}

	public List<Tag> getGoodstag() {
		return goodstag;
	}

	public void setGoodstag(List<Tag> goodstag) {
		this.goodstag = goodstag;
	}

	@Override
	public boolean check(String mail) {
		if (mapper.check(mail) != 0) {
			return false;
		}
		return true;
	}

	@Override
	public void updateuser(String user_name,String user_mail, String user_pno,String head, String user_id) {
		mapper.updateuser(user_name,user_mail,user_pno,head,user_id);
	}

}

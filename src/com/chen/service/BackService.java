package com.chen.service;

import java.util.List;

import com.chen.model.Address;
import com.chen.model.Check;
import com.chen.model.Goods;
import com.chen.model.Manager;
import com.chen.model.Scar;
import com.chen.model.Shop;
import com.chen.model.User;

public interface BackService {
	boolean addManager(Manager manager);

	List<Manager> getManagerList();

	boolean managerlogin(User user);

	boolean addCheck(Check check);

	int issell(User user);

	Check getCheck();

	void updateCheck(Check check);

	void deleteCheck(User user);

	Shop checkshop(String id);

	Shop updateshop(Shop shop);

	void addgoods(Goods goods);

	void addtagref(String tag, String goods_id);

	List<Goods> getgoodslist(String shop_id);

	void updatestate(String goods_id, int goods_state);

	Goods getgoodsinfo(String goods_id);

	void addtocart(Scar scar);

	List<Scar> getscar(String user_id);

	List<Goods> getgoodslistallow(String shop_id);

	List<Address> getaddresslist(String user_id);

	void addaddress(Address address);

	List<Shop> getshoplist();

	List<Goods> getgoodlist();
}

package com.chen.service.impl;

import java.util.List;

import com.chen.dao.BackDao;
import com.chen.model.Address;
import com.chen.model.Check;
import com.chen.model.Goods;
import com.chen.model.Manager;
import com.chen.model.Scar;
import com.chen.model.Shop;
import com.chen.model.User;
import com.chen.service.BackService;
import com.chen.utils.Common;
import com.chen.utils.GetUUID;

public class BackServiceImpl implements BackService {
	BackDao mapper;

	@Override
	public boolean addManager(Manager manager) {
		try {
			mapper.addManager(manager);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public BackDao getMapper() {
		return mapper;
	}

	public void setMapper(BackDao mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<Manager> getManagerList() {
		return mapper.getManagerList();
	}

	@Override
	public boolean managerlogin(User user) {
		return mapper.managerlogin(user.getUser_mail(), user.getUser_pwd()) != null;
	}

	@Override
	public boolean addCheck(Check check) {
		return mapper.addCheck(check) == 1;
	}

	@Override
	public int issell(User user) {
		Check check = mapper.issell(user);
		if (check == null) {
			return Common.ISNULL;
		} else if (check.getCheck_state() == 0) {
			System.out.println(check.getCheck_state());
			return Common.UNCHECK;
		} else if (check.getCheck_state() == 1) {
			return Common.ISNULL;
		}
		return Common.CHECKED;
	}

	@Override
	public Check getCheck() {
		return mapper.getCheck();
	}

	@Override
	public void updateCheck(Check check) {
		mapper.updateCheck(check);
	}

	@Override
	public void deleteCheck(User user) {
		mapper.deleteCheck(user);
	}

	@Override
	public Shop checkshop(String id) {
		Shop shop = mapper.checkshop(id);
		if (shop == null) {
			mapper.addshop(GetUUID.getUUID(), id);
			shop = mapper.checkshop(id);
			shop.setShop_name(id);
		}
		return shop;
	}

	@Override
	public Shop updateshop(Shop shop) {
		mapper.updateshop(shop);
		return mapper.checkshop(shop.getShop_owner());
	}

	@Override
	public void addgoods(Goods goods) {
		mapper.addgoods(goods);

	}

	@Override
	public void addtagref(String tag, String goods_id) {
		mapper.addtagref(GetUUID.getUUID(), tag, goods_id);

	}

	@Override
	public List<Goods> getgoodslist(String shop_id) {
		return mapper.getgoodslist(shop_id);
	}

	@Override
	public void updatestate(String goods_id, int goods_state) {
		mapper.updatestate(goods_id, goods_state);

	}

	@Override
	public Goods getgoodsinfo(String goods_id) {
		return mapper.getgoodsinfo(goods_id);
	}

	@Override
	public void addtocart(Scar scar) {
		mapper.addtocart(scar);
		
	}

	@Override
	public List<Scar> getscar(String user_id) {
		return mapper.getscarlist(user_id);
	}

	@Override
	public List<Goods> getgoodslistallow(String shop_id) {
		return mapper.getgoodslistallow(shop_id);
	}

	@Override
	public List<Address> getaddresslist(String user_id) {
		return mapper.getaddresslist(user_id);
	}

	@Override
	public void addaddress(Address address) {
		mapper.addaddress(address);
		
	}

	@Override
	public List<Shop> getshoplist() {
		return mapper.getshoplist();
	}

	@Override
	public List<Goods> getgoodlist() {
		return mapper.getgoodlist();
	}

}

package com.chen.action;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.chen.model.Address;
import com.chen.model.Goods;
import com.chen.model.Scar;
import com.chen.model.ScarGoods;
import com.chen.model.Shop;
import com.chen.model.Tag;
import com.chen.model.User;
import com.chen.service.BackService;
import com.chen.service.UserService;
import com.chen.utils.GetUUID;
import com.chen.utils.Pager;
import com.chen.utils.UploadPic;
import com.opensymphony.xwork2.ActionSupport;

public class CenterAction<T> extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserService service;
	BackService back;
	String state;
	String codemsg;
	String mail;
	User user;
	Map<String, Object> session;
	List<Shop> shoplist;
	List<Goods> goodslist;
	List<Goods> reclist;
	List<Goods> hotlist;
	List<Tag> goodstag;
	List<Scar> scarlist;
	List<ScarGoods> scargoodslist;
	File image; // 上传的文件
	File head;
	String imageFileName; // 文件名称
	String headFileName;
	Pager<T> pager;
	int currentpage;
	Shop shop;
	Goods goods;
	ScarGoods scargoods;
	String goods_id, user_name, user_mail, user_pno;
	int num;
	Scar scar;
	Address address;
	List<Address> addresslist;

	public String gocenter() {
		this.user = (User) session.get("user");
		return SUCCESS;
	}

	public String gocart() {
		this.user = (User) session.get("user");
		scarlist = back.getscar(user.getUser_id());
		for (Scar i : scarlist) {
			Goods a = back.getgoodsinfo(i.getGoods_id());
			scargoods = new ScarGoods();
			scargoods.init(a);
			scargoods.setNum(i.getGoods_num());
			scargoods.setPoint(scargoods.getGoods_price());
			scargoodslist.add(scargoods);
		}
		return SUCCESS;
	}

	public String goaddress() {
		this.user = (User) session.get("user");
		addresslist = back.getaddresslist(user.getUser_id());
		return SUCCESS;
	}

	public String addaddress() {
		this.user = (User) session.get("user");
		address.setAddress_id(GetUUID.getUUID());
		address.setUser_id(user.getUser_id());
		back.addaddress(address);
		addresslist = back.getaddresslist(user.getUser_id());
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String gomyshop() {
		this.user = (User) session.get("user");
		shop = back.checkshop(user.getUser_id());
		goodslist = back.getgoodslistallow(shop.getShop_id());
		pager.init(1, 5, (List<T>) goodslist);
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String gopre() {
		goodslist = back.getgoodslistallow(back.checkshop(user.getUser_id()).getShop_id());
		pager.init(pager.getPreviousPage(), 5, (List<T>) goodslist);
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String gonext() {
		goodslist = back.getgoodslistallow(back.checkshop(user.getUser_id()).getShop_id());
		pager.init(pager.getNextPage(), 5, (List<T>) goodslist);
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	public String goodsinfo() {
		goods = back.getgoodsinfo(goods_id);
		return SUCCESS;
	}

	public String updateuser() {
		System.out.println(user.toString());
		if (head != null) {
			imageFileName = UploadPic.uploadPic(head, headFileName);
		} else {
			user.setUser_head(" ");
		}
		if (user_mail == null) {
			user_mail = user.getUser_mail();
		}
		if (user_pno == null) {
			user_pno = user.getUser_pno();
		}
		service.updateuser(user_name, user_mail, user_pno, imageFileName, user.getUser_id());
		user = service.login(user);
		session.put("user", user);
		return SUCCESS;
	}

	public String addtocart() {
		user = (User) session.get("user");
		scar.setGoods_id(goods_id);
		scar.setGoods_num(num);
		scar.setScar_id(GetUUID.getUUID());
		scar.setUser_id(user.getUser_id());
		back.addtocart(scar);
		scarlist = back.getscar(user.getUser_id());
		for (Scar i : scarlist) {
			Goods a = back.getgoodsinfo(i.getGoods_id());
			scargoods = new ScarGoods();
			scargoods.init(a);
			scargoods.setNum(i.getGoods_num());
			scargoods.setPoint(scargoods.getGoods_price());
			scargoodslist.add(scargoods);
		}
		return SUCCESS;
	}

	public String gouserinfo() {
		System.out.println(user.getUser_mail());
		return SUCCESS;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
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

	//
	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public User getUser() {
		return user;
	}

	public BackService getBack() {
		return back;
	}

	public void setBack(BackService back) {
		this.back = back;
	}

	public Pager<T> getPager() {
		return pager;
	}

	public void setPager(Pager<T> pager) {
		this.pager = pager;
	}

	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Scar getScar() {
		return scar;
	}

	public void setScar(Scar scar) {
		this.scar = scar;
	}

	public List<Scar> getScarlist() {
		return scarlist;
	}

	public void setScarlist(List<Scar> scarlist) {
		this.scarlist = scarlist;
	}

	public List<ScarGoods> getScargoodslist() {
		return scargoodslist;
	}

	public void setScargoodslist(List<ScarGoods> scargoodslist) {
		this.scargoodslist = scargoodslist;
	}

	public ScarGoods getScargoods() {
		return scargoods;
	}

	public void setScargoods(ScarGoods scargoods) {
		this.scargoods = scargoods;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public String getUser_pno() {
		return user_pno;
	}

	public void setUser_pno(String user_pno) {
		this.user_pno = user_pno;
	}

	public File getHead() {
		return head;
	}

	public void setHead(File head) {
		this.head = head;
	}

	public String getHeadFileName() {
		return headFileName;
	}

	public void setHeadFileName(String headFileName) {
		this.headFileName = headFileName;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Address> getAddresslist() {
		return addresslist;
	}

	public void setAddresslist(List<Address> addresslist) {
		this.addresslist = addresslist;
	}

}

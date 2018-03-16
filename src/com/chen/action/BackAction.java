package com.chen.action;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.chen.model.Check;
import com.chen.model.Codemsg;
import com.chen.model.Goods;
import com.chen.model.Manager;
import com.chen.model.Shop;
import com.chen.model.Tag;
import com.chen.model.User;
import com.chen.service.BackService;
import com.chen.service.UserService;
import com.chen.utils.Common;
import com.chen.utils.GetUUID;
import com.chen.utils.Pager;
import com.chen.utils.UploadPic;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;

public class BackAction<T> extends ActionSupport implements SessionAware {
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
	Manager manager;
	Map<String, Object> session;
	List<Shop> shoplist;
	List<Goods> goodslist;
	List<Goods> reclist;
	List<Goods> hotlist;
	List<Tag> goodstag;
	List<Manager> managerlist;
	File pic1; // 上传的文件
	File pic2; // 上传的文件
	File shoplogo;
	String pic1FileName; // 文件名称
	String pic2FileName; // 文件名称
	String shoplogoFileName;
	String isshow;
	Pager<T> pager;
	int currentpage;
	Check check;
	Shop shop;
	Goods goods;
	String tag;

	public String goback() {
		this.user = (User) session.get("user");
		int a = back.issell(user);
		if (a == Common.ISNULL) {
			back.deleteCheck(user);
			return "isnull";
		} else if (a == Common.UNCHECK) {
			return "uncheck";
		}
		return SUCCESS;
	}

	public String goadd() {
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String golist() {
		pager.init(1, 5, (List<T>) back.getgoodslist(back.checkshop(user.getUser_id()).getShop_id()));
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String updateproduct() {
		back.updatestate(goods.getGoods_id(), goods.getGoods_state());
		pager.init(1, 5, (List<T>) back.getgoodslist(back.checkshop(user.getUser_id()).getShop_id()));
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	//
	@SuppressWarnings("unchecked")
	public String gopre() {
		pager.init(pager.getPreviousPage(), 5,
				(List<T>) back.getgoodslist(back.checkshop(user.getUser_id()).getShop_id()));
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String gonext() {
		pager.init(pager.getNextPage(), 5, (List<T>) back.getgoodslist(back.checkshop(user.getUser_id()).getShop_id()));
		currentpage = pager.getCurrentPage();
		goodslist = (List<Goods>) pager.getCurrentcontent();
		return SUCCESS;
	}

	public String goshopmanager() {
		shop = back.checkshop(user.getUser_id());
		return SUCCESS;
	}

	public String updateshop() {
		if (shoplogo.length() != 0) {
			String path = UploadPic.uploadPic(shoplogo, shoplogoFileName);
			shop.setShop_log(path);
		}
		shop = back.updateshop(shop);
		return SUCCESS;
	}

	public String addproduct() {
		shop = back.checkshop(user.getUser_id());
		if (shoplogo.length() != 0) {
			String path = UploadPic.uploadPic(shoplogo, shoplogoFileName);
			goods.setGoods_picture(path);
		}
		goods.setGoods_id(GetUUID.getUUID());
		goods.setShop_id(shop.getShop_id());
		System.out.println(goods.toString() + "：" + tag);
		back.addgoods(goods);
		back.addtagref(tag, goods.getGoods_id());
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String getlist() {
		isshow = "show";
		pager.init(1, 20, (List<T>) back.getManagerList());
		currentpage = pager.getCurrentPage();
		managerlist = (List<Manager>) pager.getCurrentcontent();
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String getlist_pre() {
		isshow = "show";
		pager.init(pager.getPreviousPage(), 20, (List<T>) back.getManagerList());
		currentpage = pager.getCurrentPage();
		managerlist = (List<Manager>) pager.getCurrentcontent();
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String getlist_next() {
		isshow = "show";
		pager.init(pager.getNextPage(), 20, (List<T>) back.getManagerList());
		currentpage = pager.getCurrentPage();
		managerlist = (List<Manager>) pager.getCurrentcontent();
		return SUCCESS;
	}

	public String addManager() {
		Codemsg code;
		if (back.addManager(manager)) {
			code = new Codemsg("success");
		} else {
			code = new Codemsg("fail");
		}
		System.out.println(code.getCode());
		state = JSONArray.fromObject(code).toString();
		return SUCCESS;
	}

	public String addCheck() {
		user = (User) session.get("user");
		pic1FileName = UploadPic.uploadPic(pic1, pic1FileName);
		pic2FileName = UploadPic.uploadPic(pic2, pic2FileName);
		check.setCheck_id(GetUUID.getUUID());
		check.setCheck_pic1(pic1FileName);
		check.setCheck_pic2(pic2FileName);
		check.setUser_id(user.getUser_id());
		check.setCheck_msg(" ");
		check.setHandler_id("aa");
		if (back.addCheck(check)) {
			return SUCCESS;
		}
		return ERROR;
	}

	public String unpass() {
		if (this.check.isnull()) {
			Check check = (Check) session.get("check");
			if (this.check.getCheck_msg().length() == 0) {
				this.check.setCheck_msg("null");
			}
			this.check.setCheck_id(check.getCheck_id());
			this.check.setUser_id(check.getUser_id());
			this.check.setCheck_pic1(check.getCheck_pic1());
			this.check.setCheck_pic2(check.getCheck_pic2());
		}
		check.setHandler_id((String) session.get("managerid"));
		check.setCheck_state(1);
		System.out.println(check.toString());
		back.updateCheck(check);
		// 获取新的审核内容
		check = back.getCheck();
		return "check";
	}

	public String pass() {
		if (this.check.isnull()) {
			Check check = (Check) session.get("check");
			if (this.check.getCheck_msg().length() == 0) {
				this.check.setCheck_msg("null");
			}
			this.check.setCheck_id(check.getCheck_id());
			this.check.setUser_id(check.getUser_id());
			this.check.setCheck_pic1(check.getCheck_pic1());
			this.check.setCheck_pic2(check.getCheck_pic2());
		}
		check.setHandler_id((String) session.get("managerid"));
		check.setCheck_state(2);
		System.out.println(check.toString());
		back.updateCheck(check);
		// 获取新的审核内容
		check = back.getCheck();
		return "check";
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

	public User getUser() {
		return user;
	}

	public File getPic1() {
		return pic1;
	}

	public void setPic1(File pic1) {
		this.pic1 = pic1;
	}

	public File getPic2() {
		return pic2;
	}

	public void setPic2(File pic2) {
		this.pic2 = pic2;
	}

	public String getPic1FileName() {
		return pic1FileName;
	}

	public void setPic1FileName(String pic1FileName) {
		this.pic1FileName = pic1FileName;
	}

	public String getPic2FileName() {
		return pic2FileName;
	}

	public void setPic2FileName(String pic2FileName) {
		this.pic2FileName = pic2FileName;
	}

	public Manager getManager() {
		return manager;
	}

	public void setManager(Manager manager) {
		this.manager = manager;
	}

	public BackService getBack() {
		return back;
	}

	public void setBack(BackService back) {
		this.back = back;
	}

	public String getIsshow() {
		return isshow;
	}

	public void setIsshow(String isshow) {
		this.isshow = isshow;
	}

	public List<Manager> getManagerlist() {
		return managerlist;
	}

	public void setManagerlist(List<Manager> managerlist) {
		this.managerlist = managerlist;
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

	public Check getCheck() {
		return check;
	}

	public void setCheck(Check check) {
		this.check = check;
	}

	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public File getShoplogo() {
		return shoplogo;
	}

	public void setShoplogo(File shoplogo) {
		this.shoplogo = shoplogo;
	}

	public String getShoplogoFileName() {
		return shoplogoFileName;
	}

	public void setShoplogoFileName(String shoplogoFileName) {
		this.shoplogoFileName = shoplogoFileName;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

}

package com.chen.action;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;

import org.apache.struts2.interceptor.SessionAware;

import com.chen.model.Check;
import com.chen.model.Codemsg;
import com.chen.model.Goods;
import com.chen.model.Shop;
import com.chen.model.Tag;
import com.chen.model.User;
import com.chen.service.BackService;
import com.chen.service.UserService;
import com.chen.utils.ChangeMd5;
import com.chen.utils.GetUUID;
import com.chen.utils.Send;
import com.chen.utils.UploadPic;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;

public class UserAction extends ActionSupport implements SessionAware {
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
	private File image; // 上传的文件
	private String imageFileName; // 文件名称
	Check check;
	

	public String login() throws MessagingException, NoSuchAlgorithmException, UnsupportedEncodingException {
		if(user.isempty()) {
			return LOGIN;
		}
		if(user.getUser_mail().equals("admin")&&user.getUser_pwd().equals("adminpwd")) {
			return "admin";
		}
		if(back.managerlogin(user)) {
			session.put("managerid", user.getUser_mail());
			check=back.getCheck();
			session.put("check", check);
			return "check";
		}
		user.setUser_pwd(ChangeMd5.change(user.getUser_pwd()));
		user = service.login(user);
		shoplist=back.getshoplist();
		reclist=back.getgoodlist();
		goodslist=back.getgoodlist();
		hotlist=back.getgoodlist();
		if (user == null) {
			return LOGIN;
		} else {
			session.put("user", user);
			return SUCCESS;
		}
	}

	public String register() throws MessagingException, NoSuchAlgorithmException, UnsupportedEncodingException {
		user.setUser_id(GetUUID.getUUID());
		user.setUser_pno(" ");
		user.setUser_pwd(ChangeMd5.change(user.getUser_pwd()));
		boolean a = service.register(user);
		if (!a) {
			return ERROR;
		}
		return SUCCESS;
	}
	public String gomain() {
		user=(User) session.get("user");
		return SUCCESS;
	}

	public String getCode() throws MessagingException {
		Codemsg code;
		if (!service.check(mail)) {
			code = new Codemsg("exist");
		} else {
			codemsg = GetUUID.getUUID();
			Send.sendmail(mail, codemsg);
			code = new Codemsg(codemsg);
		}
		state = JSONArray.fromObject(code).toString();
		return SUCCESS;
	}

	public String uppic() {
		imageFileName = UploadPic.uploadPic(image, imageFileName);
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public BackService getBack() {
		return back;
	}

	public void setBack(BackService back) {
		this.back = back;
	}

	public Check getCheck() {
		return check;
	}



}

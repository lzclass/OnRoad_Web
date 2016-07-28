package com.onroad.model;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.ehcache.CacheKit;
import com.onroad.kit.HtmlTagKit;
import com.onroad.kit.ModelKit;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Map;

/**
 * Created with IntelliJ IDEA. Author: I have A dream Date: 13-3-26
 */
public class User extends Model<User> {
	public static final User dao = new User();
	private static final String USER_CACHE = "user";
	private static final ModelKit mk = new ModelKit(dao, USER_CACHE);
	public static String USER_ID = "userId";
	public static String LOGIN_NAME = "loginName";
	public static String NICK_NAME = "nickName";
	public static String PASSWORD = "password";
	public static String SEX = "sex";
	public static String EMAIL = "email";
	public static String STATUS = "status";
	public static String CREATION_DATE = "creationDate";
	public static String AVATAR = "avatar";

	private static final long serialVersionUID = 1L;
	public static final User user = new User();

	/**
	 * 获取用户id*
	 * 
	 * @return 用户id
	 */
	public String userId() {
		return getStr(USER_ID);

	}

	/**
	 * 检查值是否有效*
	 * 
	 * @param sex
	 *            性别值
	 * @return 有效性
	 */
	public static final boolean checkSex(int sex) {

		return sex == 1 || sex == 0;
	}

	@Override
	public Map<String, Object> getAttrs() {
		return super.getAttrs();
	}

	/* get */
	public User get(int id) {
		return mk.loadModel(id);
	}

	public User getByEmailAndPassword(String email, String password) {
		return dao
				.findFirst(
						"select id, username, email, password from user where email=? and password=?",
						email, getMD5(password.getBytes()));
	}

	/* other */
	public void mySave() {
		HtmlTagKit.processHtmlSpecialTag(this, "username", "headImg",
				"blogUrl", "feeling");
		String password = getMD5(this.getStr("password").getBytes());
		this.set("password", password).set("registDate", new Date());
		this.save();
	}

	public void myUpdate() {
		HtmlTagKit.processHtmlSpecialTag(this, "username", "headImg",
				"blogUrl", "feeling");
		this.update();
		removeCache(this.getInt("id"));
	}

	public boolean containEmail(String email) {
		return dao.findFirst("select email from user where email=? limit 1",
				email) != null;
	}

	public boolean containUsername(String username) {
		return dao.findFirst(
				"select username from user where username=? limit 1", username) != null;
	}

	public boolean containEmailExceptThis(int userID, String email) {
		return dao.findFirst(
				"select email from user where email=? and id!=? limit 1",
				email, userID) != null;
	}

	public boolean containUsernameExceptThis(int userID, String username) {
		return dao.findFirst(
				"select username from user where username=? and id!=? limit 1",
				username, userID) != null;
	}

	/* private */
	private String getMD5(byte[] src) {
		StringBuffer sb = new StringBuffer();
		try {
			java.security.MessageDigest md = java.security.MessageDigest
					.getInstance("MD5");
			md.update(src);
			for (byte b : md.digest())
				sb.append(Integer.toString(b >>> 4 & 0xF, 16)).append(
						Integer.toString(b & 0xF, 16));
		} catch (NoSuchAlgorithmException e) {
		}
		return sb.toString();
	}

	private void removeCache(int id) {
		CacheKit.remove(USER_CACHE, id);
	}
}

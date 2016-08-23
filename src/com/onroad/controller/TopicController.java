package com.onroad.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.onroad.interceptor.AdminInterceptor;
import com.onroad.interceptor.LoginInterceptor;
import com.onroad.model.Post;
import com.onroad.model.Topic;
import com.onroad.validator.PostValidator;
import com.onroad.validator.TopicValidator;

/**
 * Created with IntelliJ IDEA. Author: iver Date: 13-3-28
 */
public class TopicController extends Controller {
	// public Map responseM = new HashMap();//用来存放返回的数据（json）
	public void renderJson(String jsonText) {
		// 经过前面的验证，已经确定用户登录成功。
		// 查询用户基本信息，放入session（基本信息主要为，用户名，角色，id等，具体看个人的情况，想放什么就放什么）
		String sql = "select userID,content from topic where id='16'? limit 1";
		Page<Topic> topic = Topic.dao.getNicePage(getParaToInt(0, 1));
		setSessionAttr("topicList", topic.getList());
		// responseM.put("state", "success");

		JSONObject json = new JSONObject();
		json.put("topicList", topic.getList());
		renderJson(json);
		// 返回成功登录的标志
		// renderJson(responseM);
	}

	public void index() {
		forwardAction("/post/" + getParaToInt(0));
	}

	public void module() {
		setAttr("topicPage",
				Topic.dao.getPageForModule(getParaToInt(0), getParaToInt(1, 1)));
		setAttr("actionUrl", "/topic/module/" + getParaToInt(0) + "-");
		render("/common/index.html");
	}

	public void hot() {
		setAttr("topicPage", Topic.dao.getHotPage(getParaToInt(0, 1)));
		setAttr("actionUrl", "/topic/hot/");
		render("/common/index.html");
	}

	public void nice() {
		setAttr("topicPage", Topic.dao.getNicePage(getParaToInt(0, 1)));
		setAttr("actionUrl", "/topic/nice/");
		render("/common/index.html");
	}

	@Before(LoginInterceptor.class)
	public void add() {
		render("/topic/add.html");
	}

	@Before({ LoginInterceptor.class, TopicValidator.class, PostValidator.class })
	public void save() {
		Topic topic = getModel(Topic.class);
		topic.mySave(getModel(Post.class));
		redirect("/post/" + topic.getInt("id"));
	}

	@Before(AdminInterceptor.class)
	public void edit() {
		Topic topic = Topic.dao.get(getParaToInt(0));
		setAttr("topic", topic);
		render("/topic/edit.html");
	}

	@Before({ AdminInterceptor.class, TopicValidator.class })
	public void update() {
		Topic topic = getModel(Topic.class);
		topic.myUpdate();
		redirect("/post/" + topic.getInt("id"));
	}
}

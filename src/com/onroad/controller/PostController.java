package com.onroad.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;
import com.onroad.interceptor.AdminInterceptor;
import com.onroad.interceptor.LoginInterceptor;
import com.onroad.model.Post;
import com.onroad.model.Topic;
import com.onroad.validator.PostValidator;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-3-30
 */
public class PostController extends Controller {
    public void index(){
        int topicID = getParaToInt(0);
        Page<Post> postPage = Post.dao.getPage(topicID, getParaToInt(1, 1));
        setAttr("postPage", postPage);
        setAttr("topic", Topic.dao.get(topicID));
        render("/post/post.html");
    }

    @Before({LoginInterceptor.class, PostValidator.class})
    public void save(){
        Post post = getModel(Post.class);
        post.mySave();
        redirect("/post/" + post.getInt("topicID"));
    }

    @Before(AdminInterceptor.class)
    public void edit(){
        setAttr("post", Post.dao.get(getParaToInt(0)));
        render("/post/edit.html");
    }

    @Before({AdminInterceptor.class, PostValidator.class})
    public void update(){
        Post post = getModel(Post.class);
        post.myUpdate();
        redirect("/post/" + post.getInt("topicID"));
    }
}

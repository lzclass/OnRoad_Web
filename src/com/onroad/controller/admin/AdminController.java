package com.onroad.controller.admin;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.onroad.interceptor.AdminInterceptor;
import com.onroad.model.Post;
import com.onroad.model.Reply;
import com.onroad.model.Topic;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-4-4
 */
@Before(AdminInterceptor.class)
public class AdminController extends Controller {
    public void index(){
        render("/admin/login.html");
    }
//    public void deleteTopic(){
//        Topic.dao.deleteByID(getParaToInt());
//        forwardAction("/");
//    }
    public void editTopic(){
        setAttr("topic", Topic.dao.get(getParaToInt()));
        render("/admin/editTopic.html");
    }
    public void showPostList(){
        setAttr("postPage", Post.dao.getPageForAdmin(getParaToInt(0, 1)));
        render("/admin/postList.html");
    }
    public void showReplyList(){
        setAttr("replyPage", Reply.dao.getPageForAdmin(getParaToInt(0, 1)));
        render("/admin/replyList.html");
    }
}

package com.onroad.controller;

import com.jfinal.core.Controller;
import com.onroad.model.Topic;

/**
 * Created with IntelliJ IDEA.
 * Author: iver
 * Date: 13-3-26
 */
public class IndexController extends Controller {
    public void index(){
        setAttr("topicPage", Topic.dao.getPage(getParaToInt(0, 1)));
        setAttr("actionUrl", "/");
        render("/common/index.html");
    }
    public void leaveMsg(){
        render("/common/leaveMsg.html");
    }
    public void regist(){
        render("/user/regist.html");
    }
    public void toLogin(){
        render("/user/login.html");
    }
}

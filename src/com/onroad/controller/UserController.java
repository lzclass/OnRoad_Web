package com.onroad.controller;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.onroad.common.MyConstants;
import com.onroad.interceptor.UserCheckInterceptor;
import com.onroad.model.User;
import com.onroad.validator.LoginValidator;
import com.onroad.validator.RegistValidator;
import com.onroad.validator.UpdateUserValidator;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-5-6
 */
public class UserController extends Controller {

    public void index(){
        setAttr("user", User.dao.get(getParaToInt(0, 0)));
        render("/user/user.html");
    }

    @Before(LoginValidator.class)
    public void login(){
        String email = getPara("email");
        String password = getPara("password");
        User user = User.dao.getByEmailAndPassword(email, password);
        if (user != null){
            setCookie("email", email, 3600*24*30);
            if (getParaToBoolean("rememberPassword")){
                setCookie("password", password, 3600*24*30);
            }
            setSessionAttr("user", user);
            if(email.equals(MyConstants.ADMIN_EMAIL)){
                setSessionAttr("isAdminLogin", "true");
            }
            redirect("/");
        }else{
            setAttr("msg", "用户名或密码错误");
            render("/user/login.html");
        }
    }

    public void logout(){
        removeSessionAttr("user");
        removeCookie("email");
        removeCookie("password");
        redirect("/");
    }

    @Before(RegistValidator.class)
    public void save(){
        User user = getModel(User.class);
        user.mySave();
        setAttr("msg", "恭喜你，注册成功，请登录：");
        render("/user/login.html");
    }

    @Before(UserCheckInterceptor.class)
    public void edit(){
        setAttr("user", User.dao.get(getParaToInt(0, 0)));
        render("/user/edit.html");
    }

    @Before(UpdateUserValidator.class)
    public void update(){
        User user = getModel(User.class);
        user.myUpdate();
        setAttr("user", user);
        render("/user/user.html");
    }
}

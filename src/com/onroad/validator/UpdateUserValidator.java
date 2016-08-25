package com.onroad.validator;

import com.jfinal.core.Controller;
import com.jfinal.kit.StringKit;
import com.jfinal.validate.Validator;
import com.onroad.model.User;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-5-8
 */
public class UpdateUserValidator extends Validator {
    @Override
    protected void validate(Controller c) {
        validateEmail("user.email", "emailMsg", "错误的邮箱地址");
        validateRegex("user.loginName", "[a-zA-Z0-9_\\u4e00-\\u9fa5]{2,8}", "loginNameMsg", "用户名的长度介于2-8之间，只能包含中文，数字，字母，下划线");
        validateString("user.headImg", false, 0, 120, "headImgMsg", "长度不能超过120");
        validateString("user.blogUrl", false, 0, 80, "blogUrlMsg", "长度不能超过80");
        validateString("user.feeling", false, 0, 280, "feelingMsg", "长度不能超过280");
        String email = c.getPara("user.email");
        if(StringKit.notBlank(email) && User.dao.containEmailExceptThis(c.getParaToInt("user.id"), email)){
            addError("emailMsg", "该email已经被注册过了：（");
        }
        String loginName = c.getPara("user.loginName");
        if(StringKit.notBlank(loginName) && User.dao.containLoginNameExceptThis(c.getParaToInt("user.id"), loginName)){
            addError("loginNameMsg", "该用户名已经被注册过了：（");
        }
    }

    @Override
    protected void handleError(Controller c) {
        c.keepModel(User.class);
        c.render("/user/edit.html");
    }
}

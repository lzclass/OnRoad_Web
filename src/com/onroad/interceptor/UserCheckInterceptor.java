package com.onroad.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;
import com.onroad.model.User;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-5-7
 */
public class UserCheckInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        Controller controller = ai.getController();
        User user = controller.getSessionAttr("user");
        if(user != null && (user.getInt("id") == controller.getParaToInt(0, 0))){
            ai.invoke();
        }else{
            controller.setAttr("msg", "只有该登录用户本人才有权操作");
            controller.renderError(500);
        }
    }
}

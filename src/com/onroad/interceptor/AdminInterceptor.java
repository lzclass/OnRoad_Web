package com.onroad.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;
import com.jfinal.kit.StringKit;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-4-4
 */
public class AdminInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        Controller controller = ai.getController();
        String isAdminLogin = controller.getSessionAttr("isAdminLogin");
        if (StringKit.notBlank(isAdminLogin) && isAdminLogin.equals("true")){
            ai.invoke();
        }else{
            controller.setAttr("msg", "需要管理员权限");
            controller.renderError(500);
        }
    }
}

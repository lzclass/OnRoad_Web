package com.onroad.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;
import com.onroad.common.bean.BaseResponse;
import com.onroad.common.bean.Code;
import com.onroad.common.token.TokenManager;
import com.onroad.common.utils.StringUtils;
import com.onroad.model.User;

/**
 * Token拦截器
 * @author malongbo
 * @date 15-1-18
 * @package com.pet.project.interceptor
 */
public class TokenInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        Controller controller = ai.getController();
        String token = controller.getPara("token");
        if (StringUtils.isEmpty(token)) {
            controller.renderJson(new BaseResponse(Code.ARGUMENT_ERROR, "token can not be null"));
            return;
        }

        User user = TokenManager.getMe().validate(token);
        if (user == null) {
            controller.renderJson(new BaseResponse(Code.TOKEN_INVALID, "token is invalid"));
            return;
        }
        
        controller.setAttr("user", user);
        ai.invoke();
    }
}

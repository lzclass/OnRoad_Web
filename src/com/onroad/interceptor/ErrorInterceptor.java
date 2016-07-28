package com.onroad.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.onroad.common.bean.BaseResponse;
import com.onroad.common.bean.Code;

/**
 * 捕获所有api action异常
 * @author malongbo
 */
public class ErrorInterceptor implements Interceptor {
    private static final Logger logger = LoggerFactory.getLogger(ErrorInterceptor.class);
    @Override
    public void intercept(ActionInvocation ai) {
        try {
            ai.invoke();
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(), e);
            ai.getController().renderJson(new BaseResponse(Code.ERROR, "server error"));
        }
    }
}

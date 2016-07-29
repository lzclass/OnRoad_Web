package com.onroad.router;

import com.jfinal.config.Routes;
import com.onroad.action.IndexAction;

/**
 * @description 
 * @author liuzhao
 * @date 2016年7月29日上午9:57:01
 */
public class ActionRouter extends Routes{
    @Override
    public void config() {
        add("/", IndexAction.class, "/");
    }
}

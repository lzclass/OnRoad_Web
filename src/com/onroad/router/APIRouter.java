package com.onroad.router;

import com.jfinal.config.Routes;
import com.onroad.controller.api.AccountAPIController;
import com.onroad.controller.api.CommonAPIController;
import com.onroad.controller.api.FileAPIController;

/**
 * @author malongbo
 */
public class APIRouter extends Routes {
    @Override
    public void config() {
        //公共api
        add("/api", CommonAPIController.class);
        //用户相关
        add("/api/account", AccountAPIController.class);
        //文件相关
        add("/api/fs",FileAPIController.class);
    }
}

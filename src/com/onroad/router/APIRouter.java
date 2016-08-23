package com.onroad.router;

import com.jfinal.config.Routes;
import com.onroad.controller.IndexController;
import com.onroad.controller.PostController;
import com.onroad.controller.ReplyController;
import com.onroad.controller.TopicController;
import com.onroad.controller.UserController;
import com.onroad.controller.admin.AdminController;
import com.onroad.controller.admin.ModuleController;
import com.onroad.controller.api.AccountAPIController;
import com.onroad.controller.api.CommonAPIController;
import com.onroad.controller.api.FileAPIController;

/**
 * @author liuzhao
 */
public class APIRouter extends Routes {
	@Override
	public void config() {
		// 公共api
		add("/api", CommonAPIController.class);
		// 用户相关
		add("/api/account", AccountAPIController.class);
		// 文件相关
		add("/api/fs", FileAPIController.class);
		add("/", IndexController.class).add("/topic", TopicController.class);
		add("/post", PostController.class).add("/reply", ReplyController.class);
		add("/user", UserController.class);
		add("/admin", AdminController.class).add("/admin/module",
				ModuleController.class);
	}
}

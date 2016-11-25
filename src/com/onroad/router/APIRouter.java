package com.onroad.router;

import com.jfinal.config.Routes;
import com.onroad.controller.api.AccountAPIController;
import com.onroad.controller.api.CommonAPIController;
import com.onroad.controller.api.DayWordAPIController;
import com.onroad.controller.api.FileAPIController;

/**
 * @author liuzhao
 */
public class APIRouter extends Routes {
	@Override
	public void config() {
//		add("/", IndexController.class).add("/topic", TopicController.class);
//		add("/post", PostController.class).add("/reply", ReplyController.class);
//		add("/user", UserController.class);
//		add("/admin", AdminController.class).add("/admin/module",
//				ModuleController.class);
		// ---------------API相关---------------------------
		// 公共api
		add("/api", CommonAPIController.class);
		// 用户相关
		add("/api/account", AccountAPIController.class);
		// 文件相关
		add("/api/fs", FileAPIController.class);
		// 每日一言相关
		add("/api/dayword", DayWordAPIController.class);
	}
}

package com.onroad.model;

import com.jfinal.plugin.activerecord.Model;
import com.onroad.kit.ModelKit;

public class DayWord extends Model<DayWord> {
	public static final DayWord dao = new DayWord();
	private static final String MODULE_CACHE = "dayword";
	private static final ModelKit mk = new ModelKit(dao, MODULE_CACHE);

	/* get */
	public DayWord get(String dateTime) {
		return dao.findFirst("select*from dayword where daytime=" + dateTime);
	}
}

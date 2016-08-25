package com.onroad.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * 意见反馈实体
 * @author mlongbo
 */
public class FeedBack extends Model<FeedBack> {

    private static final long serialVersionUID = -1267302372426876814L;
    
    public static final FeedBack dao = new FeedBack();

    /**
     * 唯一id
     */
	public static String ID = "id";

    /**
     * 反馈用户的id*
     */
	public static String USER_ID = "userId";

    /**
     * 反馈时间*
     */
	public static String CREATE_DATE = "createDate";

    /**
     * 反馈内容*
     */
	public static String CONTENT = "content";
}

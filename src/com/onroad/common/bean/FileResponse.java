package com.onroad.common.bean;

import java.util.List;

/**
 * @description 
 * @author liuzhao
 * @date 2016年7月28日下午4:01:06
 */
public class FileResponse extends DatumResponse {
    /*
    * 保存上传失败的文件名
     */
    private List<String> failed;

    public List<String> getFailed() {
        return failed;
    }

    public FileResponse setFailed(List<String> failed) {
        this.failed = failed;
        return this;
    }
}

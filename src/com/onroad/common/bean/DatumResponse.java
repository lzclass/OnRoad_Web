package com.onroad.common.bean;

/**
 * @description 
 * @author liuzhao
 * @date 2016年7月28日下午4:00:43
 */
public class DatumResponse extends BaseResponse {
    private Object datum;

    public DatumResponse() {
        super();
    }
    
    public DatumResponse (Object datum) {
        this.datum = datum;
    }

    public DatumResponse(Integer code) {
        super(code);
    }

    public DatumResponse(Integer code, String message) {
        super(code, message);
    }

    public DatumResponse setDatum(Object datum) {
        this.datum = datum;
        return this;
    }

    public Object getDatum() {
        return datum;
    }
}

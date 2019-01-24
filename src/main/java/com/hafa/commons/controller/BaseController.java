package com.hafa.commons.controller;

import com.hafa.commons.service.BaseService;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.PageBean;

import java.util.Map;

/**
 * controller公共方法类
 * @param <E>
 */
public class BaseController<E extends BaseService> {

    @SuppressWarnings(value = "unchecked")
    protected Map<String, Object> buildResultMap(E service, Map<String, Object> args, PageBean pageBean) {
        Map<String, Object> resultMap = null;
        try {
            resultMap = service.searchFor(MyUtil.bean2Map(args, pageBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (resultMap != null) {
            MyUtil.layData(resultMap, 0, "");
            return resultMap;
        }
        return MyUtil.layData(-1, "", 0, null);
    }
}

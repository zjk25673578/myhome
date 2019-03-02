package com.hafa.outlay.service;

import com.hafa.commons.service.BaseService;
import com.hafa.outlay.model.MhHouseOutlay;

import java.util.Map;

public interface MhHouseOutlayService extends BaseService<MhHouseOutlay> {

    /**
     * 添加租住房费用数据
     *
     * @param args
     * @return
     */
    int insertData(Map<String, Object> args);
}

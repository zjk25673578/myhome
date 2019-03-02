package com.hafa.outlay.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.outlay.model.MhHouseOutlay;

import java.util.Map;

public interface MhHouseOutlayMapper extends BaseMapper<MhHouseOutlay> {

    /**
     * 添加租住房费用的数据
     *
     * @param args
     * @return
     */
    int insertData(Map<String, Object> args);
}
package com.hafa.dict.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.dict.model.MhDict;

import java.util.List;
import java.util.Map;

public interface MhDictMapper extends BaseMapper<MhDict> {

    /**
     * 批量添加字典数据
     * @param args
     * @return
     */
    int saveMultiple(Map<String, Object> args);
}

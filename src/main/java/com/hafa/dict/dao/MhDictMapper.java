package com.hafa.dict.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.dict.model.MhDict;

import java.util.List;
import java.util.Map;

public interface MhDictMapper extends BaseMapper<MhDict> {

    /**
     * 批量添加字典数据
     *
     * @param args
     * @return
     */
    int saveMultiple(Map<String, Object> args);

    /**
     * 获取当前字典表中所有的diccode
     *
     * @return
     */
    List<Map<String, Object>> getDicCodeList();

    /**
     * 所有父级数据字典
     *
     * @return
     */
    List<Map<String, Object>> getParentList();

    /**
     * 查询地区相关字典数据
     *
     * @param parentid 父级数据id
     * @return
     */
    List<MhDict> getDistrictByParentId(int parentid);
}

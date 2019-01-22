package com.hafa.dict.service;

import com.hafa.commons.service.BaseService;
import com.hafa.dict.model.MhDict;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface MhDictService extends BaseService<MhDict> {
    /**
     * 批量添加字典数据
     *
     * @param dict    字典的实体类<br>
     *                在这个实体类中, dicvalue属性为以","分割的字符串
     * @param request
     * @return
     */
    int saveMultiple(MhDict dict, HttpServletRequest request);

    /**
     * 获取当前字典中所有的diccode
     *
     * @return
     */
    List<Map<String, Object>> getDicCodeList();
}

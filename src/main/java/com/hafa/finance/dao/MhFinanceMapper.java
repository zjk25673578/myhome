package com.hafa.finance.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.finance.model.MhFinance;

import java.util.Map;

public interface MhFinanceMapper extends BaseMapper<MhFinance> {

    /**
     * 批量删除数据
     *
     * @param args
     * @return
     */
    int removeMultiple(Map<String, Object> args);
}

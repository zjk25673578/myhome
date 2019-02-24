package com.hafa.finance.service;

import com.hafa.commons.service.BaseService;
import com.hafa.finance.model.MhFinance;

import javax.servlet.http.HttpServletRequest;

/**
 * 财政管理业务逻辑类
 */
public interface MhFinanceService extends BaseService<MhFinance> {

    /**
     * 删除指定id的记录(批量删除)
     *
     * @param ids
     * @param request
     * @return
     */
    int deleteMultiple(String[] ids, HttpServletRequest request);
}

package com.hafa.finance.service;

import com.hafa.finance.model.MhFinance;

import java.util.List;

/**
 * 财政管理业务逻辑类
 */
public interface MhFinanceService {

    /**
     * 所有出账记录列表
     *
     * @return
     */
    List<MhFinance> outList();

    /**
     * 数据数量
     *
     * @return
     */
    int outListCount();
}

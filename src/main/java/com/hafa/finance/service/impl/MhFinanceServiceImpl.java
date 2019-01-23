package com.hafa.finance.service.impl;

import com.hafa.finance.dao.MhFinanceMapper;
import com.hafa.finance.model.MhFinance;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MhFinanceServiceImpl implements MhFinanceService {

    @Autowired
    private MhFinanceMapper mhFinanceMapper;

    @Override
    public List<MhFinance> outList() {
        return null;
    }

    @Override
    public int outListCount() {
        return 0;
    }
}

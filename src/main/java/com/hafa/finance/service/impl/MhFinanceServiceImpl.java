package com.hafa.finance.service.impl;

import com.hafa.finance.dao.MhFinanceMapper;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MhFinanceServiceImpl implements MhFinanceService {

    @Autowired
    private MhFinanceMapper mhFinanceMapper;
}

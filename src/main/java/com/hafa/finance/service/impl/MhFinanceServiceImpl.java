package com.hafa.finance.service.impl;

import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.finance.dao.MhFinanceMapper;
import com.hafa.finance.model.MhFinance;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Map;

@Repository
public class MhFinanceServiceImpl extends CommonServiceImpl<MhFinance> implements MhFinanceService {

    @Autowired
    private MhFinanceMapper mhFinanceMapper;

    @Override
    public int saveOrUpdate(MhFinance entity, HttpServletRequest request) {
        return saveOrUpdate(mhFinanceMapper, entity, request);
    }

    @Override
    public int remove(MhFinance entity, HttpServletRequest request) {
        return remove(mhFinanceMapper, entity, request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return remove(mhFinanceMapper, ids, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return searchFor(mhFinanceMapper, args);
    }

    @Override
    public int deleteMultiple(String[] ids, HttpServletRequest request) {
        int r = 0;
        for (String id : ids) {
            r += remove(id, request);
        }
        return r;
    }
}

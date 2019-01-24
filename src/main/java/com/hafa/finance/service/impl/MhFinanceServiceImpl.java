package com.hafa.finance.service.impl;

import com.hafa.finance.dao.MhFinanceMapper;
import com.hafa.finance.model.MhFinance;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Map;

@Repository
public class MhFinanceServiceImpl implements MhFinanceService {

    @Autowired
    private MhFinanceMapper mhFinanceMapper;

    @Override
    public int saveOrUpdate(MhFinance entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        if (entity.getIds() != null) {
            entity.setValue("u", request);
            return mhFinanceMapper.updateByPrimaryKeySelective(entity);
        }
        entity.setValue("c", request);
        entity.setStatus(1);
        return mhFinanceMapper.insertSelective(entity);
    }

    @Override
    public int remove(MhFinance entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        entity.setStatus(0);
        entity.setValue("u", request);
        return mhFinanceMapper.updateByPrimaryKeySelective(entity);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        if (ids == null) {
            return -1;
        }
        MhFinance mhFinance = new MhFinance();
        mhFinance.setIds((Integer) ids);
        return remove(mhFinance, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return null;
    }
}

package com.hafa.finance.service.impl;

import com.hafa.commons.entity.LeaseEntity;
import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.finance.dao.MhFinanceMapper;
import com.hafa.finance.model.MhFinance;
import com.hafa.finance.service.MhFinanceService;
import com.hafa.users.model.MhUsers;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Date;
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

    @Override
    @Transactional
    public int insertMultiple(LeaseEntity leaseEntity, MhUsers user, HttpServletRequest request) {
        int r = 0;
        if (leaseEntity.getCreatetime() == null) {
            leaseEntity.setCreatetime(new Date());
        }
        if (StringUtils.isNotEmpty(leaseEntity.getWater())) {
            MhFinance mhFinance = buildEntity(user, leaseEntity);
            mhFinance.setValue("c", request);
            mhFinance.setCash(Double.parseDouble(leaseEntity.getWater()));
            mhFinance.setCreatetype(28);
            mhFinance.setReason("租住房用水缴费");
            r += mhFinanceMapper.insertSelective(mhFinance);
        }
        if (StringUtils.isNotEmpty(leaseEntity.getGas())) {
            MhFinance mhFinance = buildEntity(user, leaseEntity);
            mhFinance.setValue("c", request);
            mhFinance.setCash(Double.parseDouble(leaseEntity.getGas()));
            mhFinance.setCreatetype(30);
            mhFinance.setReason("租住房煤气(天然气)缴费");
            r += mhFinanceMapper.insertSelective(mhFinance);
        }
        if (StringUtils.isNotEmpty(leaseEntity.getElectric())) {
            MhFinance mhFinance = buildEntity(user, leaseEntity);
            mhFinance.setValue("c", request);
            mhFinance.setCash(Double.parseDouble(leaseEntity.getElectric()));
            mhFinance.setCreatetype(29);
            mhFinance.setReason("租住房用电量缴费");
            r += mhFinanceMapper.insertSelective(mhFinance);
        }
        if (StringUtils.isNotEmpty(leaseEntity.getWarm())) {
            MhFinance mhFinance = buildEntity(user, leaseEntity);
            mhFinance.setValue("c", request);
            mhFinance.setCash(Double.parseDouble(leaseEntity.getWarm()));
            mhFinance.setCreatetype(55);
            mhFinance.setReason("租住房暖气缴费");
            r += mhFinanceMapper.insertSelective(mhFinance);
        }
        if (StringUtils.isNotEmpty(leaseEntity.getProperty())) {
            MhFinance mhFinance = buildEntity(user, leaseEntity);
            mhFinance.setValue("c", request);
            mhFinance.setCash(Double.parseDouble(leaseEntity.getProperty()));
            mhFinance.setCreatetype(45);
            mhFinance.setReason("租住房物业缴费");
            r += mhFinanceMapper.insertSelective(mhFinance);
        }
        return r;
    }
}

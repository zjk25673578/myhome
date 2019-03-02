package com.hafa.homes.service.impl;

import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.homes.dao.MhHomesMapper;
import com.hafa.homes.model.MhHomes;
import com.hafa.homes.service.MhHomesService;
import com.hafa.outlay.model.LeaseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Map;

@Repository
public class MhHomesServiceImpl extends CommonServiceImpl<MhHomes> implements MhHomesService {

    @Autowired
    protected MhHomesMapper mhHomesMapper;

    @Override
    public int saveOrUpdate(MhHomes entity, HttpServletRequest request) {
        return saveOrUpdate(mhHomesMapper, entity, request);
    }

    @Override
    public int remove(MhHomes entity, HttpServletRequest request) {
        return remove(mhHomesMapper, entity, request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return remove(mhHomesMapper, ids, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return searchFor(mhHomesMapper, args);
    }

    @Override
    public int removeMultiple(Map<String, Object> args) {
        return mhHomesMapper.removeMultiple(args);
    }

    @Override
    public Map<String, Object> selectHomeInfoByGroupId(Integer groupId) {
        return mhHomesMapper.getHomeInfoByGroupId(groupId);
    }
}

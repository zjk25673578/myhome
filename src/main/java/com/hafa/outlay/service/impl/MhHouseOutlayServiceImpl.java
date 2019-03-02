package com.hafa.outlay.service.impl;

import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.outlay.dao.MhHouseOutlayMapper;
import com.hafa.outlay.model.MhHouseOutlay;
import com.hafa.outlay.service.MhHouseOutlayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Map;

@Repository
public class MhHouseOutlayServiceImpl extends CommonServiceImpl<MhHouseOutlay> implements MhHouseOutlayService {

    @Autowired
    protected MhHouseOutlayMapper mhHouseOutlayMapper;

    @Override
    public int saveOrUpdate(MhHouseOutlay entity, HttpServletRequest request) {
        return saveOrUpdate(mhHouseOutlayMapper, entity, request);
    }

    @Override
    public int remove(MhHouseOutlay entity, HttpServletRequest request) {
        return remove(mhHouseOutlayMapper, entity, request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return remove(mhHouseOutlayMapper, ids, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return searchFor(mhHouseOutlayMapper, args);
    }

    @Override
    public int insertData(Map< String, Object> args) {
        return mhHouseOutlayMapper.insertData(args);
    }
}

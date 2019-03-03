package com.hafa.outlay.service.impl;

import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.homes.dao.MhHomesMapper;
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
    @Autowired
    protected MhHomesMapper mhHomesMapper;

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
    public int insertData(Map<String, Object> args) {
        Integer groupid = (Integer) args.get("groupid");
        Map<String, Object> mhHomes = mhHomesMapper.getHomeInfoByGroupId(groupid);
        args.put("transfer", "2"); // 1: 转账, 2: 现金 (暂时先不做动态)
        args.put("homeid", mhHomes.get("ids"));
        return mhHouseOutlayMapper.insertData(args);
    }
}

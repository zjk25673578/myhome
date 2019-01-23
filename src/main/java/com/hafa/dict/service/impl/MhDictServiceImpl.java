package com.hafa.dict.service.impl;

import com.hafa.commons.entity.CommonModel;
import com.hafa.commons.util.MyUtil;
import com.hafa.dict.dao.MhDictMapper;
import com.hafa.dict.model.MhDict;
import com.hafa.dict.service.MhDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Repository
public class MhDictServiceImpl implements MhDictService {

    @Autowired
    protected MhDictMapper mhDictMapper;

    @Override
    public int saveOrUpdate(MhDict entity, HttpServletRequest request) {
        if (entity.getIds() == null) {
            entity.setStatus(1);
            entity.setValue("c", request);
            return mhDictMapper.insertSelective(entity);
        } else {
            entity.setValue("u", request);
            return mhDictMapper.updateByPrimaryKeySelective(entity);
        }
    }

    @Override
    public int remove(MhDict entity, HttpServletRequest request) {
        if (entity != null && entity.getIds() != null) {
            entity.setStatus(0);
            return mhDictMapper.updateByPrimaryKeySelective(entity);
        }
        return -1;
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return 0;
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        List<Map<String, Object>> list = mhDictMapper.searchFor(args);
        return MyUtil.searchForData(mhDictMapper.countFor(args), list);
    }

    @Override
    public int saveMultiple(MhDict dict, HttpServletRequest request) {
        if (dict != null && dict.getDicvalue() != null) {
            String[] dicvalues = dict.getDicvalue().split("[,，]+");
            Map<String, Object> args = null;
            try {
                args = CommonModel.get("c", request);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (args != null && args.size() > 0) {
                args.put("diccode", dict.getDiccode());
                args.put("dicvalue", dicvalues);
                args.put("desp", dict.getDesp());
                args.put("status", 1);
                return mhDictMapper.saveMultiple(args);
            }
        }
        return -1;
    }

    @Override
    public List<Map<String, Object>> getDicCodeList() {
        return mhDictMapper.getDicCodeList();
    }
}

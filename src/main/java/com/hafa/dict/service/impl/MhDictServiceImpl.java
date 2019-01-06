package com.hafa.dict.service.impl;

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
    public int saveOrUpdate(MhDict o, HttpServletRequest request) {
        if (o.getIds() == null) {
            o.setStatus(1);
            o.setValue("c", request);
            return mhDictMapper.insertSelective(o);
        } else {
            o.setValue("u", request);
            return mhDictMapper.updateByPrimaryKeySelective(o);
        }
    }

    @Override
    public int remove(MhDict o) {
        if (o == null) {
            return -1;
        }
        return remove(o.getIds());
    }

    @Override
    public int remove(Serializable ids) {
        if (ids != null) {
            return mhDictMapper.deleteByPrimaryKey(ids);
        }
        return -1;
    }

    @Override
    public List<MhDict> searchFor(Map<String, Object> args) {
        return mhDictMapper.searchFor(args);
    }

    @Override
    public int countFor(Map<String, Object> args) {
        return 0;
    }
}

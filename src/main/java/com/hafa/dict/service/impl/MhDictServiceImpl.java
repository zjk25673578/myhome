package com.hafa.dict.service.impl;

import com.hafa.commons.entity.CommonModel;
import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.msg.MsgUtil;
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
public class MhDictServiceImpl extends CommonServiceImpl<MhDict> implements MhDictService {

    @Autowired
    protected MhDictMapper mhDictMapper;

    @Override
    public int saveOrUpdate(MhDict entity, HttpServletRequest request) {
        return saveOrUpdate(mhDictMapper, entity, request);
    }

    @Override
    public int remove(MhDict entity, HttpServletRequest request) {
        return remove(mhDictMapper, entity, request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return remove(mhDictMapper, ids, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        List<Map<String, Object>> list = mhDictMapper.searchFor(args);
        return MsgUtil.searchForLayData(mhDictMapper.countFor(args), list);
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
                args.put("parentid", dict.getParentid());
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

    @Override
    public List<Map<String, Object>> getDicCodeListByCdkey(String cdkey) {
        Map<String, Object> args = MyUtil.searchForArgs("cdKey", cdkey, "minpage", 0, "limit", 1000);
        return mhDictMapper.searchFor(args);
    }

    @Override
    public List<Map<String, Object>> getParentList() {
        return mhDictMapper.getParentList();
    }
}

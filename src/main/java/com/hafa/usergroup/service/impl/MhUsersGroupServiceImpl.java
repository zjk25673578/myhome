package com.hafa.usergroup.service.impl;

import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.commons.util.encrypt.Base64Util;
import com.hafa.usergroup.dao.MhUsersGroupMapper;
import com.hafa.usergroup.model.MhUsersGroup;
import com.hafa.usergroup.service.MhUsersGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Repository
public class MhUsersGroupServiceImpl extends CommonServiceImpl<MhUsersGroup> implements MhUsersGroupService {

    @Autowired
    protected MhUsersGroupMapper mhUsersGroupMapper;

    @Override
    public int saveOrUpdate(MhUsersGroup entity, HttpServletRequest request) {
        return saveOrUpdate(mhUsersGroupMapper, entity, request);
    }

    @Override
    public int remove(MhUsersGroup entity, HttpServletRequest request) {
        return remove(mhUsersGroupMapper, entity, request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return remove(mhUsersGroupMapper, ids, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return searchFor(mhUsersGroupMapper, args);
    }

    @Override
    public List<Map<String, Object>> selectList() {
        return mhUsersGroupMapper.selectList();
    }

    @Override
    public boolean selectGroupByName(String groupname, Integer ids) {
        if (groupname == null) {
            return false;
        }
        String groupcode = Base64Util.encode(groupname);
        return mhUsersGroupMapper.countByCode(groupcode, ids) > 0;
    }

    @Override
    public MhUsersGroup selectByPrimary(String ids) {
        return mhUsersGroupMapper.selectByPrimaryKey(Integer.parseInt(ids));
    }
}

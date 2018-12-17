package com.hafa.users.service.impl;

import com.hafa.commons.entity.CommonModel;
import com.hafa.commons.service.BaseService;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.PageBean;
import com.hafa.users.dao.MhUsersMapper;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

@Repository
public class MhUsersServiceImpl extends BaseService implements MhUsersService {

    @Autowired
    protected MhUsersMapper mhUsersMapper;

    @Override
    public MhUsers getUserByUnamePword(MhUsers user) {
        return mhUsersMapper.selectByUnamePword(user.getUname(), user.getPword());
    }

    @Override
    public List<Map<String, Object>> list(Map<String, Object> args, PageBean pageBean) throws Exception {
        Map<String, Object> params = MyUtil.bean2Map(args, pageBean);
        return mhUsersMapper.list(params);
    }

    @Override
    public int listCount(Map<String, Object> args) {
        return mhUsersMapper.listCount(args);
    }

    @Override
    public int insertUser(MhUsers mhUsers, HttpServletRequest request) {
        mhUsers.setPword("123456");
        mhUsers.setStatus(1);
        mhUsers.setValue("c", request);
        return mhUsersMapper.insertSelective(mhUsers);
    }

    @Override
    public int updateUser(MhUsers mhUsers, HttpServletRequest request) {
        mhUsers.setValue("u", request);
        return mhUsersMapper.updateByPrimaryKeySelective(mhUsers);
    }

    @Override
    public int deleteUser(String ids, HttpServletRequest request) {
        MhUsers user = new MhUsers();
        user.setIds(Integer.parseInt(ids));
        user.setStatus(0);
        user.setValue("u", request);
        return mhUsersMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public int deleteUsers(String ids, HttpServletRequest request) throws InvocationTargetException, IllegalAccessException {
        Map<String, Object> args = CommonModel.get("u", request);
        if (args != null) {
            String[] _ids = ids.split(",");
            args.put("status", 0);
            args.put("ids", _ids);
            return mhUsersMapper.deleteUsers(args);
        }
        return -1;
    }

    @Override
    public int updateSetups(String ids, String setups, HttpServletRequest request) {
        MhUsers user = new MhUsers();
        user.setIds(Integer.parseInt(ids));
        user.setSetups(Integer.parseInt(setups));
        user.setValue("u", request);
        return mhUsersMapper.updateByPrimaryKeySelective(user);
    }
}

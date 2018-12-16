package com.hafa.users.service.impl;

import com.hafa.commons.service.BaseService;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.PageBean;
import com.hafa.tableinfo.dao.MhTableinfoMapper;
import com.hafa.users.dao.MhUsersMapper;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Repository
public class MhUsersServiceImpl extends BaseService implements MhUsersService {

    @Autowired
    protected MhUsersMapper mhUsersMapper;
    @Autowired
    protected MhTableinfoMapper mhTableinfoMapper;

    @Override
    public MhUsers getUserByUnamePword(MhUsers user) {
        return mhUsersMapper.selectByUnamePword(user.getUname(), user.getPword());
    }

    @Override
    public List<Map<String, Object>> list(Map<String, Object> args, PageBean pageBean) {
        Map<String, Object> params = null;
        try {
            params = MyUtil.bean2Map(args, pageBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mhUsersMapper.list(params);
    }

    @Override
    public int listCount(Map<String, Object> args) {
        return mhUsersMapper.listCount(args);
    }

    @Override
    public int insertUser(MhUsers mhUsers, HttpServletRequest request) {
        mhUsers.setPword("123456");
        mhUsers.setStatus(new Byte("1"));
        int r = mhUsersMapper.insertSelective(mhUsers);
        return r;
    }

    @Override
    public int updateUser(MhUsers mhUsers, HttpServletRequest request) {
        int r = mhUsersMapper.updateByPrimaryKeySelective(mhUsers);
        return r;
    }

    @Override
    public int deleteUser(String ids) {
        MhUsers user = new MhUsers();
        user.setIds(Integer.parseInt(ids));
        user.setStatus(new Byte("0"));
        return mhUsersMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public int deleteUsers(String ids) {
        String[] _ids = ids.split(",");
        return mhUsersMapper.updateUsersStatus(_ids);
    }
}

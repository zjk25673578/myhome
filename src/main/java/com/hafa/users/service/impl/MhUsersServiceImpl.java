package com.hafa.users.service.impl;

import com.hafa.commons.entity.CommonModel;
import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.commons.util.encrypt.Base64Util;
import com.hafa.commons.util.encrypt.MD5Util;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.users.dao.MhUsersMapper;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Repository
public class MhUsersServiceImpl extends CommonServiceImpl<MhUsers> implements MhUsersService {

    @Autowired
    protected MhUsersMapper mhUsersMapper;

    @Autowired
    protected MD5Util md5Util;

    @Override
    public MhUsers getUserByUnamePword(MhUsers user) {
        // 根据用户名密码获取用户列表(可能会有重复)
        String pword = user.getPword();
        List<MhUsers> listUser = mhUsersMapper.selectByUnamePword(user.getUname(), md5Util.getMD5ofStr(Base64Util.encode(pword)));
        if (listUser.size() == 1) { // 如果只有一个用户被查询到
            return listUser.get(0); // 返回此用户对象
        }
        return null; // 否则返回null, 抛出异常
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        // 根据指定条件查询用户列表
        List<Map<String, Object>> list = mhUsersMapper.searchFor(args);
        return MsgUtil.searchForLayData(mhUsersMapper.countFor(args), list); // 返回layui需要的数据结构
    }

    @Override
    public int deleteUsers(String ids, HttpServletRequest request) throws Exception {
        // 获取批量删除的修改时间, 修改人
        Map<String, Object> args = CommonModel.get("u", request);
        if (args != null) {
            String[] _ids = ids.split(",");
            if (mhUsersMapper.checkAdmin(_ids) > 0) {
                return -10; // 不能删除超级管理员
            }
            args.put("status", 0);
            args.put("ids", _ids);
            return mhUsersMapper.deleteUsers(args);
        }
        return -1;
    }

    @Override
    public int updateSetups(String ids, String setups, HttpServletRequest request) {
        MhUsers user = mhUsersMapper.selectByPrimaryKey(Integer.parseInt(ids));
        if (user.getUserType() == 1) {
            return -8; // 超级管理员的信息只能由本人从个人信息页面修改
        }
        user.setSetups(Integer.parseInt(setups)); // 修改为禁用状态
        user.setValue("u", request);
        return mhUsersMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public int saveOrUpdate(MhUsers entity, HttpServletRequest request) {
        int adminCount = mhUsersMapper.selectAdmins();
        if (entity.getUserType() == 1 && adminCount > 0) {
            return -9; // 超级管理员有且必须只能有一个
        }
        if (entity.getIds() == null) { // 添加操作
            entity.setPword(md5Util.getMD5ofStr(Base64Util.encode("123456"))); // 默认密码
            entity.setStatus(1); // 有效标志
            entity.setSetups(1); // 启用状态
            entity.setValue("c", request);
            return mhUsersMapper.insertSelective(entity);
        } else { // 修改操作
            MhUsers user = mhUsersMapper.selectByPrimaryKey(entity.getIds());
            if (user.getUserType() == 1) {
                return -8; // 超级管理员的信息只能由本人从个人信息页面修改
            }
            entity.setValue("u", request);
            return mhUsersMapper.updateByPrimaryKeySelective(entity);
        }
    }

    @Override
    public int remove(MhUsers entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        return remove(entity.getIds(), request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        MhUsers user = mhUsersMapper.selectByPrimaryKey(ids);
        if (user == null) {
            return -1; // 不存在的用户
        }
        if (user.getUserType() == 1) {
            return -10; // 不能删除超级管理员
        }
        user.setStatus(0);
        user.setValue("u", request);
        return mhUsersMapper.updateByPrimaryKeySelective(user);
    }

}

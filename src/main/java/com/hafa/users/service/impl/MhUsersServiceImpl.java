package com.hafa.users.service.impl;

import com.hafa.users.dao.MhUsersMapper;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MhUsersServiceImpl implements MhUsersService {

    @Autowired
    protected MhUsersMapper mhUsersMapper;

    @Override
    public MhUsers getUserByUnamePword(MhUsers user) {
        return mhUsersMapper.selectByUnamePword(user.getUname(), user.getPword());
    }
}

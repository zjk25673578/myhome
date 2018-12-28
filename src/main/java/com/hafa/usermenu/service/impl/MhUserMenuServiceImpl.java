package com.hafa.usermenu.service.impl;

import com.hafa.usermenu.dao.MhUserMenuMapper;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MhUserMenuServiceImpl implements MhUserMenuService {

    @Autowired
    protected MhUserMenuMapper mhUserMenuMapper;

    @Override
    public List<Integer> getCheckedMenuIdsByUserId(String ids) {
        return mhUserMenuMapper.getCheckedMenuIdsByUserId(ids);
    }
}

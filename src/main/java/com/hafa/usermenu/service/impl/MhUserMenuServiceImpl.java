package com.hafa.usermenu.service.impl;

import com.hafa.usermenu.dao.MhUserMenuMapper;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MhUserMenuServiceImpl implements MhUserMenuService {

    @Autowired
    protected MhUserMenuMapper mhUserMenuMapper;


}

package com.hafa.menu.service.impl;

import com.hafa.commons.service.BaseService;
import com.hafa.menu.dao.MhMenuMapper;
import com.hafa.menu.model.MhMenu;
import com.hafa.menu.service.MhMenuService;
import com.hafa.users.model.MhUsers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Repository
public class MhMenuServiceImpl extends BaseService implements MhMenuService {

    @Autowired
    private MhMenuMapper mhMenuMapper;

    @Override
    public List<MhMenu> menuList(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return mhMenuMapper.selectMenusWithUserid(user);
        }
        return null;
    }
}

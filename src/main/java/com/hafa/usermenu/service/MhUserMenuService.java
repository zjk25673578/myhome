package com.hafa.usermenu.service;

import com.hafa.commons.service.BaseService;
import com.hafa.usermenu.model.MhUserMenu;

import java.util.List;

public interface MhUserMenuService extends BaseService<MhUserMenu> {
    List<Integer> getCheckedMenuIdsByUserId(String ids);

    boolean updateAuthority(String ids, String menuid, boolean flag);
}

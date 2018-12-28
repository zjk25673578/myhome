package com.hafa.usermenu.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.usermenu.model.MhUserMenu;

import java.util.List;

public interface MhUserMenuMapper extends BaseMapper<MhUserMenu> {

    List<Integer> getCheckedMenuIdsByUserId(String ids);
}

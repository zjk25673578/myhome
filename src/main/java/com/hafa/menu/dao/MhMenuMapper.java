package com.hafa.menu.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.menu.model.MhMenu;
import com.hafa.users.model.MhUsers;

import java.util.List;
import java.util.Map;

public interface MhMenuMapper extends BaseMapper<MhMenu> {

    List<MhMenu> selectMenusWithUserid(MhUsers userid);

    List<Map<String, Object>> menuListByMap();
}

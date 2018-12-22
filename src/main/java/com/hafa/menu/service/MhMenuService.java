package com.hafa.menu.service;

import com.hafa.commons.entity.TreeModel;
import com.hafa.menu.model.MhMenu;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface MhMenuService {
    List<MhMenu> menuList(HttpServletRequest request);

    List<TreeModel> menuTreeList();

    int updateMenuStructure(String currentId, String targetId);
}

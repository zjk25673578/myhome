package com.hafa.menu.service;

import com.hafa.commons.entity.TreeModel;
import com.hafa.commons.service.BaseService;
import com.hafa.menu.model.MhMenu;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface MhMenuService extends BaseService<MhMenu> {
    List<MhMenu> menuList(HttpServletRequest request);

    List<TreeModel> menuTreeList();

    List<TreeModel> menuTreeAuthority();

    int updateMenuStructure(String currentId, String targetId);

    int updateByPrimaryKeySelective(MhMenu menu, HttpServletRequest request);

    List<Map<String, Object>> listByParentId(String id);

    int removeMenu(String ids, HttpServletRequest request);
}

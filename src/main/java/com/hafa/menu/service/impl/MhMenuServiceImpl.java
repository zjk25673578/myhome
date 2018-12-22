package com.hafa.menu.service.impl;

import com.hafa.commons.entity.TreeModel;
import com.hafa.commons.service.BaseService;
import com.hafa.commons.util.MyUtil;
import com.hafa.menu.dao.MhMenuMapper;
import com.hafa.menu.model.MhMenu;
import com.hafa.menu.service.MhMenuService;
import com.hafa.users.model.MhUsers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class MhMenuServiceImpl extends BaseService<MhMenu> implements MhMenuService {

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

    @Override
    public List<TreeModel> menuTreeList() {
        List<Map<String, Object>> menuList = mhMenuMapper.menuListByMap();
        Map<String, String> model = new HashMap<>();
        model.put("id", "ids");
        model.put("label", "menuname");
        model.put("url", "murl");
        model.put("parentId", "parentid");
        for (Map<String, Object> m : menuList) {
            System.out.println(m);
        }
        return MyUtil.list2TreeModel(menuList, 100000, model);
    }

    @Override
    public int updateMenuStructure(String currentId, String targetId) {
        if (currentId == null || targetId == null) {
            return -3;
        }
        MhMenu menu = new MhMenu();
        menu.setIds(Integer.parseInt(currentId));
        menu.setParentid(Integer.parseInt(targetId));
        return mhMenuMapper.updateByPrimaryKeySelective(menu);
    }
}

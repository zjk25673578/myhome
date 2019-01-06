package com.hafa.menu.service.impl;

import com.hafa.commons.entity.TreeModel;
import com.hafa.commons.util.MyUtil;
import com.hafa.menu.dao.MhMenuMapper;
import com.hafa.menu.model.MhMenu;
import com.hafa.menu.service.MhMenuService;
import com.hafa.users.model.MhUsers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class MhMenuServiceImpl implements MhMenuService {

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
        return MyUtil.list2TreeModel(menuList, 100000, model);
    }

    @Override
    public List<TreeModel> menuTreeAuthority() {
        List<Map<String, Object>> menuList = mhMenuMapper.menuTreeAuthority();
        Map<String, String> model = new HashMap<>();
        model.put("id", "ids");
        model.put("label", "menuname");
        model.put("url", "murl");
        model.put("parentId", "parentid");
        return MyUtil.list2TreeModel(menuList, 0, model);
    }

    @Override
    public int updateMenuStructure(String currentId, String targetId) {
        if (currentId != null && targetId != null) {
            MhMenu menu = new MhMenu();
            menu.setIds(Integer.parseInt(currentId));
            menu.setParentid(Integer.parseInt(targetId));
            return mhMenuMapper.updateByPrimaryKeySelective(menu);
        }
        return -3; // 参数不正确
    }

    @Override
    public int updateByPrimaryKeySelective(MhMenu menu, HttpServletRequest request) {
        if (menu.getIds() != null && menu.getIds() != 0) {
            menu.setValue("u", request);
            return mhMenuMapper.updateByPrimaryKeySelective(menu);
        }
        return -3; // 参数不正确
    }

    @Override
    public List<Map<String, Object>> listByParentId(String id) {
        if (id != null) {
            return mhMenuMapper.listByParentId(id);
        }
        return null;
    }

    @Override
    public int saveOrUpdate(MhMenu o, HttpServletRequest request) {
        return -1;
    }

    @Override
    public int remove(MhMenu o) {
        return -1;
    }

    @Override
    public int remove(Serializable ids) {
        return -1;
    }

    @Override
    public List<MhMenu> searchFor(Map<String, Object> args) {
        return null;
    }
}

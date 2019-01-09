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

    public static Map<String, String> model = new HashMap<>();

    @Autowired
    private MhMenuMapper mhMenuMapper;

    static {
        model.put("id", "ids");
        model.put("label", "menuname");
        model.put("url", "murl");
        model.put("parentId", "parentid");
    }

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
        return MyUtil.list2TreeModel(menuList, 100000, model);
    }

    @Override
    public List<TreeModel> menuTreeAuthority() {
        List<Map<String, Object>> menuList = mhMenuMapper.menuTreeAuthority();
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
    public int saveOrUpdate(MhMenu entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        if (entity.getIds() != null) {
            entity.setValue("u", request);
            return mhMenuMapper.updateByPrimaryKeySelective(entity);
        }
        entity.setValue("c", request);
        entity.setStatus(1);
        return mhMenuMapper.insertSelective(entity);
    }

    @Override
    public int removeMenu(String ids, HttpServletRequest request) {
        if (ids != null && ids.trim().length() > 0) {
            String idSign = mhMenuMapper.getChildrenMenuIds(ids); // 通过函数查询当前菜单以及子菜单
            return mhMenuMapper.removeMenus(idSign.split(","));
        }
        return 0;
    }

    @Override
    public int remove(MhMenu entity, HttpServletRequest request) {
        return 0;
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return 0;
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return null;
    }
}

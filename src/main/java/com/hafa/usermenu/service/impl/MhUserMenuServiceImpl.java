package com.hafa.usermenu.service.impl;

import com.hafa.commons.service.impl.CommonServiceImpl;
import com.hafa.commons.util.MyUtil;
import com.hafa.menu.dao.MhMenuMapper;
import com.hafa.usermenu.dao.MhUserMenuMapper;
import com.hafa.usermenu.model.MhUserMenu;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Repository
public class MhUserMenuServiceImpl extends CommonServiceImpl<MhUserMenu> implements MhUserMenuService {

    @Autowired
    protected MhUserMenuMapper mhUserMenuMapper;
    @Autowired
    protected MhMenuMapper mhMenuMapper;

    @Override
    public List<Integer> getCheckedMenuIdsByUserId(String ids) {
        return mhUserMenuMapper.getCheckedMenuIdsByUserId(ids);
    }

    @Override
    public boolean updateAuthority(String userId, String menuid, boolean flag) {
        // 获取父级菜单
        String parentMenuIds = mhMenuMapper.getParentMenuId(menuid);
        // 获取子菜单集合
        String childrenIds = mhMenuMapper.getChildrenMenuIds(menuid);
        // 需要更改的菜单按钮
        // 因为Set不重复
        Set<Integer> insertMenuIds = MyUtil.concatMenuIds(childrenIds, parentMenuIds);

        if (flag) { // 选中, 做添加操作
            // 查询出当前用户拥有的菜单
            List<Integer> hadMenuIds = mhUserMenuMapper.listMenuIdByUserId(userId);
            // 移除已经有的菜单权限
            // 这里有一个bug, 如果菜单中isparent属性为null, 则会出现查询异常
            insertMenuIds.removeAll(hadMenuIds);
            if (insertMenuIds.size() > 0) {
                return mhUserMenuMapper.insertUserIdMenuIds(userId, insertMenuIds) > 0;
            } else {
                return false;
            }
        } else { // 取消选中, 删除操作
            // 只需要删除当前取消选中的菜单和子菜单
            int r = mhUserMenuMapper.removeByUserIdMenuId(userId, MyUtil.string2Set(childrenIds));
            return r > 0;
        }
    }

    @Override
    public int saveOrUpdate(MhUserMenu entity, HttpServletRequest request) {
        return saveOrUpdate(mhUserMenuMapper, entity, request);
    }

    @Override
    public int remove(MhUserMenu entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        return remove(entity.getIds(), request);
    }

    @Override
    public int remove(Serializable ids, HttpServletRequest request) {
        return remove(mhUserMenuMapper, ids, request);
    }

    @Override
    public Map<String, Object> searchFor(Map<String, Object> args) {
        return null;
    }
}

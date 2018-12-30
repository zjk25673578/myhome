package com.hafa.usermenu.service.impl;

import com.hafa.commons.service.BaseService;
import com.hafa.commons.util.MyUtil;
import com.hafa.menu.dao.MhMenuMapper;
import com.hafa.usermenu.dao.MhUserMenuMapper;
import com.hafa.usermenu.model.MhUserMenu;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public class MhUserMenuServiceImpl extends BaseService<MhUserMenu> implements MhUserMenuService {

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
        Set<Integer> insertMenuIds = MyUtil.concatMenuIds(childrenIds, parentMenuIds);

        if (flag) { // 选中, 做添加操作
            // 查询出当前用户拥有的菜单
            List<Integer> hadMenuIds = mhUserMenuMapper.listMenuIdByUserId(userId);
            // 移除已经有的菜单权限, 数据库中取出来的一定小于等于需要添加的
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
}

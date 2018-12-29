package com.hafa.usermenu.service.impl;

import com.hafa.commons.util.MyUtil;
import com.hafa.menu.dao.MhMenuMapper;
import com.hafa.usermenu.dao.MhUserMenuMapper;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public class MhUserMenuServiceImpl implements MhUserMenuService {

    @Autowired
    protected MhUserMenuMapper mhUserMenuMapper;
    @Autowired
    protected MhMenuMapper mhMenuMapper;

    @Override
    public List<Integer> getCheckedMenuIdsByUserId(String ids) {
        return mhUserMenuMapper.getCheckedMenuIdsByUserId(ids);
    }

    @Override
    public boolean updateAuthority(String ids, String menuid, boolean flag) {
        // 获取父级菜单
        String parentMenuIds = mhMenuMapper.getParentMenuId(menuid);
        // 获取子菜单集合
        String childrenIds = mhMenuMapper.getChildrenMenuIds(menuid);
        // 需要更改的菜单按钮
        Set<Integer> set = MyUtil.concatMenuIds(childrenIds, parentMenuIds);

        if (flag) { // 选中, 做添加操作

        } else { // 取消选中, 删除操作

        }
        return false;
    }
}

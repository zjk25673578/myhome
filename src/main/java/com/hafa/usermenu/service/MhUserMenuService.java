package com.hafa.usermenu.service;

import com.hafa.commons.service.BaseService;
import com.hafa.usermenu.model.MhUserMenu;

import java.util.List;

public interface MhUserMenuService extends BaseService<MhUserMenu> {


    /**
     * 获取指定用户所拥有的菜单权限(不包含父级菜单)
     *
     * @param ids
     * @return
     */
    List<Integer> getCheckedMenuIdsByUserId(String ids);

    /**
     * 更新用户菜单权限
     *
     * @param userId 指定用户主键
     * @param menuid 菜单权限主键(以","分隔的字符串)
     * @param flag   指定是增加还是删除
     * @return
     */
    boolean updateAuthority(String userId, String menuid, boolean flag);
}

package com.hafa.usermenu.service;

import java.util.List;

public interface MhUserMenuService {
    List<Integer> getCheckedMenuIdsByUserId(String ids);

    boolean updateAuthority(String ids, String menuid, boolean flag);
}

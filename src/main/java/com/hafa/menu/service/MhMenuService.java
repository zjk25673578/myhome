package com.hafa.menu.service;

import com.hafa.menu.model.MhMenu;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface MhMenuService {
    List<MhMenu> menuList(HttpServletRequest request);
}

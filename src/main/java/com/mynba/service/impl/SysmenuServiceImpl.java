package com.mynba.service.impl;

import com.mynba.dao.SysmenuDao;
import com.mynba.model.Sysmenu;
import com.mynba.model.TreeModel;
import com.mynba.service.SysmenuService;
import com.mynba.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SysmenuServiceImpl implements SysmenuService {

    @Autowired
    private SysmenuDao sysmenuDao;

    @Override
    public List<TreeModel> trees() {
        List<Sysmenu> list = sysmenuDao.trees();
        return MyUtil.convert(list, 0, null);
    }
}

package com.hafa.pwordhis.dao;

import com.hafa.pwordhis.model.MhPwordHis;

public interface MhPwordHisMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhPwordHis record);

    int insertSelective(MhPwordHis record);

    MhPwordHis selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhPwordHis record);

    int updateByPrimaryKey(MhPwordHis record);
}

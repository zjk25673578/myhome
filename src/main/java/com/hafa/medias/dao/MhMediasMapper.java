package com.hafa.medias.dao;

import com.hafa.medias.model.MhMedias;

public interface MhMediasMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhMedias record);

    int insertSelective(MhMedias record);

    MhMedias selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhMedias record);

    int updateByPrimaryKey(MhMedias record);
}

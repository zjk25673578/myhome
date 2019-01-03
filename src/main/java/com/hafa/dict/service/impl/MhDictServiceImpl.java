package com.hafa.dict.service.impl;

import com.hafa.dict.dao.MhDictMapper;
import com.hafa.dict.service.MhDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MhDictServiceImpl implements MhDictService {

    @Autowired
    protected MhDictMapper mhDictMapper;


}

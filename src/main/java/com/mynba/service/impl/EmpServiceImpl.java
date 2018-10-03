package com.mynba.service.impl;

import com.mynba.dao.EmpDao;
import com.mynba.model.Emp;
import com.mynba.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpDao empDao;

    @Override
    public Map<String, Object> selectEmps() {
        List<Emp> list = empDao.selectUsers();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", 0);
        resultMap.put("msg", "返回的消息");
        resultMap.put("count", list.size());
        resultMap.put("data", list);
        return resultMap;
    }

    @Override
    public int insertEmp(Emp emp) {
        return empDao.insertEmp(emp);
    }
}

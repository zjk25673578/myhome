package com.mynba.service.impl;

import com.mynba.dao.EmpDao;
import com.mynba.model.Emp;
import com.mynba.service.EmpService;
import com.mynba.util.PageBean;
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
    public Map<String, Object> selectEmps(PageBean pageBean) {
        List<Emp> list = empDao.selectEmps(pageBean);
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", 0);
        resultMap.put("msg", "返回的消息");
        resultMap.put("count", empDao.selectEmpsCounts());
        resultMap.put("data", list);
        return resultMap;
    }

    @Override
    public int insertEmp(Emp emp) {
        return empDao.insertEmp(emp);
    }

    @Override
    public int deleteEmp(Integer empno) {
        return empDao.deleteEmp(empno == null ? -1 : empno);
    }

    @Override
    public int delMultipleEmp(String ids) {
        String[] ids_split = ids.split(",");
        return empDao.delMultipleEmp(ids_split);
    }
}

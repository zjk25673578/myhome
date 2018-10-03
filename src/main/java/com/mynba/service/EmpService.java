package com.mynba.service;

import com.mynba.model.Emp;
import com.mynba.util.PageBean;

import java.util.Map;

public interface EmpService {

    /**
     * 获取员工列表
     * @param pageBean
     * @return
     */
    Map<String, Object> selectEmps(PageBean pageBean);

    /**
     * 添加一条记录
     * @param emp
     * @return
     */
    int insertEmp(Emp emp);

    /**
     * 删除一条记录
     * @param empno
     * @return
     */
    int deleteEmp(Integer empno);

    /**
     * 批量删除
     * @param ids
     * @return
     */
    int delMultipleEmp(String ids);
}

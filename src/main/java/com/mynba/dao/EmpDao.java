package com.mynba.dao;

import com.mynba.model.Emp;
import com.mynba.util.PageBean;

import java.util.List;

public interface EmpDao {

    /**
     * 获取员工列表
     * @param pageBean
     * @return
     */
    List<Emp> selectEmps(PageBean pageBean);

    /**
     * 添加一条记录
     * @param emp
     * @return
     */
    int insertEmp(Emp emp);

    /**
     * 获取员工数量
     * @return
     */
    int selectEmpsCounts();

    /**
     * 删除一个员工
     * @param empno
     * @return
     */
    int deleteEmp(Integer empno);

    /**
     * 删除多个
     * @param ids_split
     * @return
     */
    int delMultipleEmp(String[] ids_split);
}

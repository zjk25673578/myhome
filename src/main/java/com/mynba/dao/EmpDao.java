package com.mynba.dao;

import com.mynba.model.Emp;

import java.util.List;

public interface EmpDao {
    List<Emp> selectUsers();

    int insertEmp(Emp emp);
}

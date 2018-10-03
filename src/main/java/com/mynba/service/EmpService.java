package com.mynba.service;

import com.mynba.model.Emp;

import java.util.Map;

public interface EmpService {
    Map<String, Object> selectEmps();

    int insertEmp(Emp emp);
}

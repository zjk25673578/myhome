package com.mynba.controller;

import com.alibaba.fastjson.JSON;
import com.mynba.model.Emp;
import com.mynba.model.Message;
import com.mynba.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/emp")
public class EmpController {

    @Autowired
    private EmpService empService;

    @RequestMapping("/main")
    public String main() {
        return "emps/main";
    }

    @ResponseBody
    @RequestMapping("/addEmp")
    public String addEmp(Emp emp) {
        System.out.println(emp);
        Message msg;
        int i = empService.insertEmp(emp);
        if (i > 0) {
            msg = new Message(true, "数据操作成功 !", 1);
        } else {
            msg = new Message(false, "操作失败 !", 5);
        }
        return msg.toString();
    }

    @ResponseBody
    @RequestMapping("/list")
    public String list() {
        Map<String, Object> resultMap = empService.selectEmps();
        return JSON.toJSONString(resultMap);
    }
}

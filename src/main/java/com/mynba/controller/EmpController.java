package com.mynba.controller;

import com.alibaba.fastjson.JSON;
import com.mynba.model.Emp;
import com.mynba.model.EmpSearchEntity;
import com.mynba.model.Message;
import com.mynba.service.EmpService;
import com.mynba.util.MyUtil;
import com.mynba.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
        int result = empService.insertEmp(emp);
        Message msg = MyUtil.msg(result);
        return msg.toString();
    }

    @ResponseBody
    @RequestMapping("/deleteEmp")
    public String deleteEmp(Integer empno) {
        int result = empService.deleteEmp(empno);
        Message msg = MyUtil.msg(result);
        return msg.toString();
    }

    @ResponseBody
    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "1") int page,
                       @RequestParam(defaultValue = "10") int limit,
                       @RequestBody(required = false) EmpSearchEntity empSearchEntity) {
        System.err.println(empSearchEntity);
        PageBean pageBean = new PageBean(limit, page);
        Map<String, Object> resultMap = empService.selectEmps(pageBean);
        return JSON.toJSONString(resultMap);
    }

    @ResponseBody
    @RequestMapping("/delMultipleEmp")
    public String delMultipleEmp(String ids) {
        int result = empService.delMultipleEmp(ids);
        Message msg = MyUtil.msg(result);
        return msg.toString();
    }
}

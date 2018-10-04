package com.mynba.model;

import java.util.Date;

public class EmpSearchEntity {
    private String ename;
    private int sex;
    private int min_sal;
    private int max_sal;
    private int min_age;
    private int max_age;
    private Date start_hiredate;
    private Date end_hiredate;

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getMin_sal() {
        return min_sal;
    }

    public void setMin_sal(int min_sal) {
        this.min_sal = min_sal;
    }

    public int getMax_sal() {
        return max_sal;
    }

    public void setMax_sal(int max_sal) {
        this.max_sal = max_sal;
    }

    public int getMin_age() {
        return min_age;
    }

    public void setMin_age(int min_age) {
        this.min_age = min_age;
    }

    public int getMax_age() {
        return max_age;
    }

    public void setMax_age(int max_age) {
        this.max_age = max_age;
    }

    public Date getStart_hiredate() {
        return start_hiredate;
    }

    public void setStart_hiredate(Date start_hiredate) {
        this.start_hiredate = start_hiredate;
    }

    public Date getEnd_hiredate() {
        return end_hiredate;
    }

    public void setEnd_hiredate(Date end_hiredate) {
        this.end_hiredate = end_hiredate;
    }

    @Override
    public String toString() {
        return "EmpSearchEntity{" +
                "ename='" + ename + '\'' +
                ", sex=" + sex +
                ", min_sal=" + min_sal +
                ", max_sal=" + max_sal +
                ", min_age=" + min_age +
                ", max_age=" + max_age +
                ", start_hiredate=" + start_hiredate +
                ", end_hiredate=" + end_hiredate +
                '}';
    }
}

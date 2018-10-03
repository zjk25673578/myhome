package com.mynba.util;

public class PageBean {
    private int rows;
    private int page;
    private int maxpage;
    private int minpage;

    public PageBean() {
        calMaxAndMin();
    }

    public PageBean(int rows, int page) {
        this.rows = rows;
        this.page = page;
        calMaxAndMin();
    }

    private void calMaxAndMin() {
        this.maxpage = page * rows;
        this.minpage = (page - 1) * rows;
    }

    public int getMaxpage() {
        return maxpage;
    }

    public void setMaxpage(int maxpage) {
        this.maxpage = maxpage;
    }

    public int getMinpage() {
        return minpage;
    }

    public void setMinpage(int minpage) {
        this.minpage = minpage;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getRows() {
        return rows;
    }
}

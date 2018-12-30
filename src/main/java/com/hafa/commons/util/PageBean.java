package com.hafa.commons.util;

/**
 * 分页类
 */
public class PageBean {
    /**
     * 每页显示行数
     */
    private int rows;
    /**
     * 当前页数
     */
    private int page;
    /**
     * 需要显示的最大页数(可能用在Oracle数据库中)
     */
    private int maxpage;
    /**
     * 需要跳过的数据条数(Mysql中limit关键字后第一个参数)
     */
    private int minpage;

    public PageBean() {
        this.setPage(1);
        this.setRows(8);
        calMaxAndMin();
    }

    public PageBean(int rows, int page) {
        this.setPage(page);
        this.setRows(rows);
        calMaxAndMin();
    }

    private void calMaxAndMin() {
        this.maxpage = page * rows;
        this.minpage = (page - 1) * rows;
    }

    public int getMaxpage() {
        return maxpage;
    }

    public int getMinpage() {
        return minpage;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        if (page < 1) {
            this.page = 1;
            return;
        }
        this.page = page;
    }

    public void setRows(int rows) {
        if (rows < 1) {
            this.rows = 1;
            return;
        }
        this.rows = rows;
    }

    public int getRows() {
        return rows;
    }
}

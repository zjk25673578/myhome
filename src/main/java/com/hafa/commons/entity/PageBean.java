package com.hafa.commons.entity;

/**
 * 分页类
 */
public class PageBean {
    /**
     * 每页显示行数
     */
    private int limit = 8;
    /**
     * 当前页数
     */
    private int page = 1;
    /**
     * 需要显示的最大页数(可能用在Oracle数据库中)
     */
    private int maxpage;
    /**
     * 需要跳过的数据条数(Mysql中limit关键字后第一个参数)
     */
    private int minpage;

    public PageBean() {
        calMaxAndMin();
    }

    public PageBean(int limit, int page) {
        this.setPage(page);
        this.setLimit(limit);
        calMaxAndMin();
    }

    private void calMaxAndMin() {
        this.maxpage = page * limit;
        this.minpage = (page - 1) * limit;
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
        calMaxAndMin();
    }

    public void setLimit(int limit) {
        if (limit < 1) {
            this.limit = 1;
            return;
        }
        this.limit = limit;
        calMaxAndMin();
    }

    public int getLimit() {
        return limit;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "limit=" + limit +
                ", page=" + page +
                ", maxpage=" + maxpage +
                ", minpage=" + minpage +
                '}';
    }
}

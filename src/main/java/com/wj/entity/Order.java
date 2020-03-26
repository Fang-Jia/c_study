package com.wj.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 订单实体类    对应数据库订单表
 */
public class Order {
//    ID
    private Integer oid;
//    订单添加者
    private String orderName;
//    订单添加时间
    private Date addTime;
//    显示在前端的下单时间
    private String addTimeStr;
//    订单总金额
    private Double total;
//    商品和订单的多对多关系
    private Set<Book> bookSet = new HashSet<>();

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public String getAddTimeStr() {
        return addTimeStr;
    }

    public void setAddTimeStr(String addTimeStr) {
        this.addTimeStr = addTimeStr;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Set<Book> getBookSet() {
        return bookSet;
    }

    public void setBookSet(Set<Book> bookSet) {
        this.bookSet = bookSet;
    }
}

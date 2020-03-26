package com.wj.entity;

import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 自由行产品实体类     对应数据库自由行表
 */
public class Book {
//    ID
    private Integer bid;
//    商品标题
    private String bookTitle;
//    商品价格
    private Double price;
//    商品图片地址
    private String bookImg;
//    商品的添加时间
    private Date addTime;
//    商品和订单的多对多关系
    private Set<Order> orderSet = new HashSet<>();

    public Set<Order> getOrderSet() {
        return orderSet;
    }

    public void setOrderSet(Set<Order> orderSet) {
        this.orderSet = orderSet;
    }

//    前端传递的图片对象
    private File file;
    private String fileFileName;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getBookImg() {
        return bookImg;
    }

    public void setBookImg(String bookImg) {
        this.bookImg = bookImg;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }
}

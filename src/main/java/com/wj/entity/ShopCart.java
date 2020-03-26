package com.wj.entity;

import java.util.Date;

/**
 * 购物车实体类   对应数据库购物车表
 */
public class ShopCart {
//    ID
    private Integer cartId;
//    商品预定者
    private String name;
//    商品ID
    private Integer shopId;
//    添加时间
    private Date addTime;

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }
}

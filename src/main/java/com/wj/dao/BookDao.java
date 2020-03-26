package com.wj.dao;

import com.wj.entity.Book;
import com.wj.entity.Order;
import com.wj.entity.ShopCart;

import java.util.List;

/**
 * 书籍      数据持久层
 */
public interface BookDao {
    List<Book> selectAll();

    List<Book> SelectByPage(int begin, int limit);

    void saveInfo(Book book);

    void addShop(ShopCart shopCart);

    List<ShopCart> selectCart(String name);

    Book selectShopById(int shopId);

    void deleteCartByShopId(int shopId);

    void saveOrder(Order order);

    List<Order> selectOrderByName(String name);

    void deleteOrderById(int oid);
}

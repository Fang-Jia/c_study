package com.wj.dao.impl;

import com.wj.dao.BookDao;
import com.wj.entity.Book;
import com.wj.entity.ShopCart;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * 书籍数据持久层实现类
 */
public class BookDaoImpl implements BookDao {

//    注入HibernateTemplate属性
    private HibernateTemplate hibernateTemplate;
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) { this.hibernateTemplate = hibernateTemplate; }


    /**
     * 添加书籍信息
     */
    @Override
    public void saveInfo(Book book) {
        hibernateTemplate.save(book);
    }


    /**
     * 查询所有信息
     */
    @Override
    public List<Book> selectAll() {
        return (List<Book>) hibernateTemplate.find("from Book ");
    }

    /**
     * 查询信息     分页
     */
    @Override
    public List<Book> SelectByPage(final int begin, final int limit) {
        List<Book> list = hibernateTemplate.execute(new HibernateCallback<List<Book>>() {
            @Override
            public List<Book> doInHibernate(Session session) throws HibernateException {
                List list = session.createCriteria(Book.class).setFirstResult(begin).setMaxResults(limit).addOrder(Order.desc("addTime")).list();
                return list;
            }
        });
        return list;
    }

    /**
     * 预定书籍
     */
    @Override
    public void addShop(ShopCart shopCart) {
        hibernateTemplate.save(shopCart);
    }

    /**
     * 查询购物车
     */
    @Override
    public List<ShopCart> selectCart(String name) {
        return (List<ShopCart>) hibernateTemplate.find("from ShopCart where name = ? order by addTime desc ", name);
    }

    /**
     * 通过ID搜索商品
     */
    @Override
    public Book selectShopById(int shopId) { return hibernateTemplate.get(Book.class,shopId); }

    /**
     * 删除购物车商品  通过商品ID
     */
    @Override
    public void deleteCartByShopId(int id) {
        List<ShopCart> shopCarts = (List<ShopCart>) hibernateTemplate.find("from ShopCart where shopId = ?", id);
        for(ShopCart shopCart : shopCarts){
            hibernateTemplate.delete(shopCart);
        }
    }

    /**
     * 添加订单
     */
    @Override
    public void saveOrder(com.wj.entity.Order order) {
        hibernateTemplate.save(order);
    }

    /**
     * 查询订单和商品多对多第三张表
     */
    @Override
    public List<com.wj.entity.Order> selectOrderByName(String name) {
        return (List<com.wj.entity.Order>) hibernateTemplate.find("from Order o inner join fetch o.bookSet  where o.orderName = ? order by o.addTime desc", name);
    }

    /**
     * 删除订单
     */
    @Override
    public void deleteOrderById(int oid) {
        com.wj.entity.Order order = hibernateTemplate.get(com.wj.entity.Order.class,oid);
        hibernateTemplate.delete(order);
    }
}

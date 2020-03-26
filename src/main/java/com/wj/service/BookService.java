package com.wj.service;


import com.wj.dao.BookDao;
import com.wj.entity.Book;
import com.wj.entity.Order;
import com.wj.entity.ShopCart;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 书籍       业务层
 */
@Transactional
public class BookService {

//    注入BookDao属性
    private BookDao bookDao;
    public void setBookDao(BookDao bookDao) { this.bookDao = bookDao; }


    /**
     * 添加书籍信息
     */
    public void addInfo(Book book) {
        bookDao.saveInfo(book);
    }


    /**
     * 查询所有信息
     */
    public List<Book> getInfo() {
        return bookDao.selectAll();
    }

    /**
     * 获取数据     分页
     */
    public List<Book> getPageInfo(int page, int limit) {
//        计算分页的开始，和每页显示的条数
        int begin = 0;
        if (page > 1){
            begin = (page-1) * limit;
        }

        List<Book> strategies = bookDao.SelectByPage(begin,limit);
        return strategies;
    }

    /**
     * 预定产品
     */
    public void addShop(int shopId, String name) {
        ShopCart shopCart = new ShopCart();
        shopCart.setName(name);
        shopCart.setShopId(shopId);
        shopCart.setAddTime(new Date());
        bookDao.addShop(shopCart);
    }

    /**
     * 购物车产品列表查询
     */
    public List<Book> getCart(String name) {
//        通过用户名向购物车表中查询信息
        List<ShopCart> shopCarts = bookDao.selectCart(name);
        List<Book> books = new ArrayList<>();
        for(ShopCart shopCart : shopCarts){
//            获取商品ID
            int shopId = shopCart.getShopId();
//            通过商品ID查询商品信息
            Book book = bookDao.selectShopById(shopId);
            books.add(book);
        }
        return books;
    }

    /**
     * 删除购物车商品
     */
    public void delCart(int shopId) {
        bookDao.deleteCartByShopId(shopId);
    }

    /**
     * 添加订单
     */
    public void addOrder(Double price, String[] strings, String name) {
        Order order = new Order();
        order.setTotal(price);
        order.setAddTime(new Date());
        order.setOrderName(name);
        for (String string : strings){
            int id = Integer.parseInt(string);
            Book book = bookDao.selectShopById(id);
            bookDao.deleteCartByShopId(id);
            order.getBookSet().add(book);
        }
        bookDao.saveOrder(order);
    }

    /**
     * 查询订单     通过用户名
     */
    public List<Order> getOrderByName(String name) {
        List<Order> orderList = bookDao.selectOrderByName(name);
        for (Order order : orderList){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String dateStr = simpleDateFormat.format(order.getAddTime());
            order.setAddTimeStr(dateStr);
        }
        return orderList;
    }

    /**
     * 取消订单
     */
    public void quitOrder(int oid) {
        bookDao.deleteOrderById(oid);
    }

    /**
     * 保存图片到本地服务器目录
     */
    public String saveImg(Book book) throws IOException {
//      转换当前系统时间格式
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String dateStr = simpleDateFormat.format(new Date());

//        获取上传文件的文件名
        String fileName = book.getFileFileName();
//        采用随机UUID命名方式，防止文件重复
        String uuid = UUID.randomUUID() + "-";
//        存放文件的目标文件夹
        String dest = "E:/论文/c_study/web/assets/upload/" + dateStr;
//        判断文件夹是否为空，若为空则创建
        File destFile = new File(dest);
        if (!destFile.exists()){
            destFile.mkdirs();
        }
        try(FileInputStream inputStream = new FileInputStream(book.getFile());
            FileOutputStream outputStream = new FileOutputStream(destFile+ "/" + uuid +fileName);){
            // 文件读取
            int count;
            byte[] bytes = new byte[inputStream.available()];
            inputStream.read(bytes);
            outputStream.write(bytes);

        }catch (Exception e){
            e.printStackTrace();
        }
        return dateStr + "/" + uuid +fileName;
    }
}

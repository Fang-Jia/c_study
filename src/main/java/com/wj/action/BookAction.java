package com.wj.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wj.entity.Book;
import com.wj.entity.Order;
import com.wj.service.BookService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 书籍       控制层
 */
public class BookAction extends ActionSupport implements ModelDriven {

//    注入BookService属性
    private BookService  bookService;
    public void setBookService(BookService bookService) { this.bookService = bookService; }

//    封装表单数据        模型驱动封装
    private Book book = new Book();
    @Override
    public Object getModel() { return book; }

//    封装向前端传递的数据格式
    private Map<String,Object> map = new HashMap<>();
    public Map<String, Object> getMap() { return map; }

//    向值栈存放list集合
    private List<Object> list = new ArrayList<>();
    public List<Object> getList() { return list; }

    /**
     * 书籍  主页
     */
    public String home(){
//        获取请求参数
        HttpServletRequest request = ServletActionContext.getRequest();
        String page = (String) request.getParameter("page");
        String limit = (String) request.getParameter("limit");

        int count = bookService.getInfo().size();
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("curr",page);

        if (page == null){
            List<Book> list1 = bookService.getPageInfo(1,5);
            list.addAll(list1);
            return "home";
        }
        List<Book> list2 = bookService.getPageInfo(Integer.parseInt(page),Integer.parseInt(limit));
        list.addAll(list2);
        return "home";
    }

    /**
     * 添加书籍信息页面
     */
    public String add(){ return "add"; }

    /**
     * 添加书籍信息
     */
    public void addInfo(){
        bookService.addInfo(book);
    }

    /**
     * 预定书籍
     */
    public String addShop(){
        int shopId = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
        String name = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
        bookService.addShop(shopId,name);
        return SUCCESS;
    }

    /**
     * 购物车主页
     */
    public String cart(){
        String name = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
        List<Book> frees = bookService.getCart(name);
        list.addAll(frees);
        return "cart";
    }

    /**
     * 删除购物车商品
     */
    public void delCart(){
        int shopId = Integer.parseInt(ServletActionContext.getRequest().getParameter("shopId"));
        bookService.delCart(shopId);
    }

    /**
     * 添加订单
     */
    public void addOrder(){
        HttpServletRequest request = ServletActionContext.getRequest();
        Double price = Double.parseDouble(request.getParameter("price"));
        String[] strings = request.getParameter("arr").split(",");
        String name = (String) request.getSession().getAttribute("username");
        bookService.addOrder(price,strings,name);
    }

    /**
     * 订单主页
     */
    public String order(){
        String name = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
        List<Order> orderList = bookService.getOrderByName(name);
        for(int x = 0; x< orderList.size(); x++){
            if (x == orderList.size()-1){
                list.add(orderList.get(x));
                break;
            }
            if (orderList.get(x) == orderList.get(x+1)){
                continue;
            }
            list.add(orderList.get(x));
        }
        return "order";
    }

    /**
     * 取消订单
     */
    public void quitOrder(){
        int oid = Integer.parseInt(ServletActionContext.getRequest().getParameter("oid"));
        bookService.quitOrder(oid);
    }

    /**
     * 上传图片
     */
    public String uploadFile() throws IOException {
//        保存图片到服务器
        String imgStr = bookService.saveImg(book);

        map.put("code",0);
        map.put("msg","");
        map.put("src","../../assets/upload/"+imgStr);
        return SUCCESS;
    }
}

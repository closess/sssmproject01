package com.ahrtolia.controller;

import com.ahrtolia.dao.MainMapper;
import com.ahrtolia.entity.News;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.Type1;
import com.ahrtolia.service.MainService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/main")
@Slf4j
public class MainHandler {
    @Autowired
    private MainService mainService;
    @Autowired
    private MainMapper mainMapper;
    @RequestMapping("/getAll.action")
    //mybatis默认把数据存储在request中  若要存储到session中则可以获取原生session对象存储
    public String getMainAllShow(HttpServletRequest request,HttpSession session){
        //防止注销登陆时session销毁  导致页面没有数据所以存在application中
       ServletContext application = request.getServletContext();
       //得到所有的商品的大致分类
        List<Type1> type1List = mainService.getAllType1();
        log.info("Type1:[{}]",type1List);
        application.setAttribute("type1List", type1List);
        //得到所有新闻、促销、节日消息
        List<News> newsList = mainService.getAllNews();
        application.setAttribute("newsList",newsList);
        return "main";
    }
    @RequestMapping("/searchProduct.action")
    public ModelAndView searchProducts(int page, String keyWord, HttpSession session,HttpServletRequest request){
       //确保分页时不需要前端再把keyWord传过来 或者每次都把keyword存到session中前端分页每次传过来也行
        if(keyWord != null){
            session.setAttribute("keyWord",keyWord);
        }else {
            keyWord = (String) session.getAttribute("keyWord");
        }
        //处理页面参数越界的情况
        if(page<1){
            page = 1;
        }else if(page>mainService.searchProductCount(keyWord,8)){
            page = mainService.searchProductCount(keyWord,8);
        }
        request.setAttribute("page",page);
        ModelAndView modelAndView = new ModelAndView();
        List<Product> productList = mainService.searchProduct(keyWord,page,8);
        int pageCount = mainService.searchProductCount(keyWord,8);
        modelAndView.addObject("type1Product",productList);
        modelAndView.addObject("allPageCount",pageCount);
        int productCount = mainMapper.searchProductCount(keyWord);
        modelAndView.addObject("productCount",productCount);
        //设置一个标志  用于前端分页区别不同的请求
        modelAndView.addObject("st","s");
        modelAndView.setViewName("goodsList");
        return modelAndView;
    }
    @RequestMapping("/getProductByType1.action")
    //当参数里面定义一个基本数据类型的时候  前端有可能不传过来参数 基本数据类型不能赋值为null
    //  为了不报错  用包装类给他代替
    //添加了@requestParam后参数必须传不然会400  错误  不添加注解的话没传相同名称的参数会把null赋给形参
    public ModelAndView getProductByType1(Integer type1Id, int page, HttpSession session, HttpServletRequest request){
        //确保分页时不需要前端再把keyWord传过来 或者每次都把keyword存到session中前端分页每次传过来也行
        int pageCount = mainService.getProductCountByType1(type1Id, 8);
        if(type1Id != null){
            session.setAttribute("type1Id",type1Id);//商品Type1分类是从这个获取的
        }else {
            type1Id = (int) session.getAttribute("type1Id");
        }
        //处理页面参数越界的情况
        if(page<1){
            page = 1;
        }else if(page> pageCount && pageCount != 0){
            //若超过最大页数，则返回最大页数的数据
            page = pageCount;
        }
        //el表达式用getAttribute方法取map集合的值  前端传过来的参数 只能用getParameter取到 在jsp页面是不能再取到的需要
        // 再存进域对象里面   struts2框架不需要再存进去的原因是因为框架把request的参数去出来后存进了值栈 el表达式可以取
        // 到值栈的数据
        request.setAttribute("page",page);//页数重新存进去
        if(pageCount == 0){
            request.setAttribute("page",0);
        }
        ModelAndView modelAndView = new ModelAndView();
        //通过type1分类&&和当前页 得到要显示的商品
        List<Product> productList = mainService.getProductByType1(type1Id,page,8);
       // int pageCount = mainService.getProductCountByType1(type1Id,8);
        modelAndView.addObject("type1Product",productList);//当前页的商品
        modelAndView.addObject("allPageCount",pageCount);//type1所有商品的构成的页数
        int productCount = mainMapper.getProductCountByType1(type1Id);//type1下所有商品的数量
        modelAndView.addObject("productCount",productCount);
        //设置一个标志  用于前端分页区别不同的请求
        modelAndView.addObject("st","t");
        modelAndView.setViewName("goodsList");
        return modelAndView;
    }
    @RequestMapping("/getProductByType2.action")
    //当参数里面定义一个基本数据类型的时候  前端有可能不传过来参数 基本数据类型不能赋值为null
    //  为了不报错  用包装类给他代替
    public ModelAndView getProductByType2(Integer type2Id,int page,HttpSession session,HttpServletRequest request){
        //确保分页时不需要前端再把keyWord传过来 或者每次都把keyword存到session中前端分页每次传过来也行
        if(type2Id != null){
            session.setAttribute("type2Id",type2Id);
        }else {
            type2Id = (int) session.getAttribute("type2Id");
        }
        //处理页面参数越界的情况
        if(page<1){
            page = 1;
        }else if(page>mainService.getProductCountByType2(type2Id,8) && mainService.getProductCountByType2(type2Id,8)!=0){
            page = mainService.getProductCountByType2(type2Id,8);
        }
        //el表达式用getAttribute方法取map集合的值  前端传过来的参数 只能用getParameter取到 在jsp页面是不能再取到的需要
        // 再存进域对象里面   struts2框架不需要再存进去的原因是因为框架把request的参数去出来后存进了值栈 el表达式可以取
        // 到值栈的数据
        request.setAttribute("page",page);
        //该分类没有产品的时候页数为0
        if(mainService.getProductCountByType2(type2Id,8) == 0){
            request.setAttribute("page",0);
        }
        ModelAndView modelAndView = new ModelAndView();
        List<Product> productList = mainService.getProductByType2(type2Id,page,8);
        int pageCount = mainService.getProductCountByType2(type2Id,8);
        modelAndView.addObject("type1Product",productList);
        modelAndView.addObject("allPageCount",pageCount);
        int productCount = mainMapper.getProductCountByType2(type2Id);
        modelAndView.addObject("productCount",productCount);
        //设置一个标志  用于前端分页区别不同的请求
        modelAndView.addObject("st","t2");
        modelAndView.setViewName("goodsList");
        return modelAndView;
    }
    @RequestMapping("/getProductByType3.action")
    //当参数里面定义一个基本数据类型的时候  前端有可能不传过来参数 基本数据类型不能赋值为null
    //  为了不报错  用包装类给他代替
    public ModelAndView getProductByType3(Integer type3Id,int page,HttpSession session,HttpServletRequest request){
        //确保分页时不需要前端再把keyWord传过来 或者每次都把keyword存到session中前端分页每次传过来也行
        if(type3Id != null){
            session.setAttribute("type3Id",type3Id);
        }else {
            type3Id = (int) session.getAttribute("type3Id");
        }
        //处理页面参数越界的情况
        if(page<1){
            page = 1;
        }else if(page>mainService.getProductCountByType3(type3Id,8) && mainService.getProductCountByType3(type3Id,8)!=0){
            page = mainService.getProductCountByType3(type3Id,8);
        }
        //el表达式用getAttribute方法取map集合的值  前端传过来的参数 只能用getParameter取到 在jsp页面是不能再取到的需要
        // 再存进域对象里面   struts2框架不需要再存进去的原因是因为框架把request的参数去出来后存进了值栈 el表达式可以取
        // 到值栈的数据
        request.setAttribute("page",page);
        if(mainService.getProductCountByType3(type3Id,8) == 0){
            request.setAttribute("page",0);
        }
        ModelAndView modelAndView = new ModelAndView();
        List<Product> productList = mainService.getProductByType3(type3Id,page,8);
        int pageCount = mainService.getProductCountByType3(type3Id,8);
        modelAndView.addObject("type1Product",productList);
        modelAndView.addObject("allPageCount",pageCount);
        int productCount = mainMapper.getProductCountByType3(type3Id);
        modelAndView.addObject("productCount",productCount);
        //设置一个标志  用于前端分页区别不同的请求
        modelAndView.addObject("st","t3");
        modelAndView.setViewName("goodsList");
        return modelAndView;
    }
    @RequestMapping("/getAllNews.action")
    public ModelAndView getAllNews(int page){
        ModelAndView modelAndView = new ModelAndView();
        if(page < 1){
            page = 1;
        }else if(page > mainService.getNewsCount(8) && mainService.getNewsCount(8) != 0){
            page =mainService.getNewsCount(8);
        }
        List<News> newsList = mainService.getNews(page,8);
        modelAndView.addObject("newsList",newsList);
        modelAndView.addObject("page",page);
        int allPageCount = mainService.getNewsCount(8);
        modelAndView.addObject("allPageCount",allPageCount);
        modelAndView.setViewName("newsList");
        return  modelAndView;
    }}

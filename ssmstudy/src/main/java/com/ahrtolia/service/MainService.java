package com.ahrtolia.service;

import com.ahrtolia.entity.News;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.Type1;

import java.util.List;

public interface MainService {
    public List<Type1> getAllType1();
    public List<News> getAllNews();
    public List<Product> searchProduct(String keyWord,int page,int limit);
    public int searchProductCount(String keyWord,int limit);
    public List<Product> getProductByType1(int type1Id,int page,int limit);
    public int getProductCountByType1(int type1Id,int limit);
    public List<Product> getProductByType2(int type2Id,int page,int limit);
    public int getProductCountByType2(int type2Id,int limit);
    public List<Product> getProductByType3(int type3Id,int page,int limit);
    public int getProductCountByType3(int type3Id,int limit);
    public List<News> getNews(int page,int limit);
    public int getNewsCount(int limit);
}

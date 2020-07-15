package com.ahrtolia.dao;

import com.ahrtolia.entity.News;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.Type1;

import java.util.List;

public interface MainMapper {
    public List<Type1> getAllType1();
    public List<News> getAllNews();
    public List<Product> searchProduct(String keyWord,int begin,int limit);
    public int searchProductCount(String keyWord);
    public List<Product> getProductByType1(int type1Id,int begin,int limit);
    public int getProductCountByType1(int type1Id);
    public List<Product> getProductByType2(int type2Id,int begin,int limit);
    public int getProductCountByType2(int type2Id);
    public List<Product> getProductByType3(int type3Id,int begin,int limit);
    public int getProductCountByType3(int type3Id);
    public List<News> getNews(int begin,int limit);
    public int getNewsCount();

}

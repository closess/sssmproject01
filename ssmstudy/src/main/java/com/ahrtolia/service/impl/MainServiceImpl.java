package com.ahrtolia.service.impl;

import com.ahrtolia.dao.MainMapper;
import com.ahrtolia.entity.News;
import com.ahrtolia.entity.Product;
import com.ahrtolia.entity.Type1;
import com.ahrtolia.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MainServiceImpl implements MainService {
   @Autowired
   private MainMapper mainMapper;
    @Override
    public List<Type1> getAllType1() {
        return mainMapper.getAllType1();
    }

    @Override
    public List<News> getAllNews() {
        return mainMapper.getAllNews();
    }

    @Override
    public List<Product> searchProduct(String keyWord, int page, int limit) {
        int begin = (page-1)*limit;
        return mainMapper.searchProduct("%"+keyWord+"%",begin,limit);
    }

    @Override
    public int searchProductCount(String keyWord, int limit) {
        int count = mainMapper.searchProductCount("%"+keyWord+"%");
        int pageCount = count/limit;
        if(count%limit != 0){
            pageCount += 1;
        }
        return pageCount;
    }

    @Override
    public List<Product> getProductByType1(int type1Id, int page, int limit) {
        int begin = (page-1)*limit;
        return mainMapper.getProductByType1(type1Id,begin,limit);
    }

    @Override
    public int getProductCountByType1(int type1Id, int limit) {
        int count = mainMapper.getProductCountByType1(type1Id);
        int pageCount = count/limit;
        if(count%limit != 0){
            pageCount += 1;
        }
        return pageCount;
    }

    @Override
    public List<Product> getProductByType2(int type2Id, int page, int limit) {
        int begin = (page-1)*limit;
        return mainMapper.getProductByType2(type2Id,begin,limit);
    }

    @Override
    public int getProductCountByType2(int type2Id, int limit) {
        int count = mainMapper.getProductCountByType2(type2Id);
        int pageCount = count/limit;
        if(count%limit != 0){
            pageCount += 1;
        }
        return pageCount;
    }

    @Override
    public List<Product> getProductByType3(int type3Id, int page, int limit) {
        int begin = (page-1)*limit;
        return mainMapper.getProductByType3(type3Id,begin,limit);
    }

    @Override
    public int getProductCountByType3(int type3Id, int limit) {
        int count = mainMapper.getProductCountByType3(type3Id);
        int pageCount = count/limit;
        if(count%limit != 0){
            pageCount += 1;
        }
        return pageCount;
    }

    @Override
    public List<News> getNews(int page, int limit) {
        int begin = (page - 1)*limit;
        return mainMapper.getNews(begin,limit);
    }

    @Override
    public int getNewsCount(int limit) {
        int count = mainMapper.getNewsCount();
        int pageCount = count/limit;
        if(count % limit != 0){
            pageCount += 1;
        }
        return pageCount;
    }

}

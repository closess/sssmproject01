package com.ahrtolia.entity;

import java.util.Set;

public class Type2 {
    private int id;
    private String name;
    private Set<Product> set;
    private Type1 type1;
    private Set<Type3> type3;

    public Set<Type3> getType3() {
        return type3;
    }

    public void setType3(Set<Type3> type3) {
        this.type3 = type3;
    }

    public Type1 getType1() {
        return type1;
    }

    public void setType1(Type1 type1) {
        this.type1 = type1;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Product> getSet() {
        return set;
    }

    public void setSet(Set<Product> set) {
        this.set = set;
    }
}

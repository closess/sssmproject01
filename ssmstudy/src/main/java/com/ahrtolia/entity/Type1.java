package com.ahrtolia.entity;

import java.util.Set;

public class Type1 {
    private int id;
    private String name;
    private Set<Product> set;
    private Set<Type2> type2;

    public Set<Type2> getType2() {
        return type2;
    }

    public void setType2(Set<Type2> type2) {
        this.type2 = type2;
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

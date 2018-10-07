package com.imall.vo;

/**
 * Created by Lenovo on 2017/10/25.
 */
public class ProductSaleCount {
    private Integer  id;
    private String name;
    private Integer stock;
    private Integer countSale;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getCountSale() {
        return countSale;
    }

    public void setCountSale(Integer countSale) {
        this.countSale = countSale;
    }
}

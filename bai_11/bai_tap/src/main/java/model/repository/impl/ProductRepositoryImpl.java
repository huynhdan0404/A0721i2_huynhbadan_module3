package model.repository.impl;

import model.bean.Product;
import model.repository.ProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {
    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add( new Product(1, "samsung", 100, "còn"));
        productList.add( new Product(2, "nokia", 200, "còn"));
        productList.add( new Product(3, "iphone", 300, "còn"));
        productList.add( new Product(4, "vsmart", 400, "còn"));
    }
    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public Product findById(int id) {
        Integer temp = id;
        for(Product product: productList) {
            if(product.getId() == temp) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }

    @Override
    public void createProduct(Product product) {
        productList.add(product);
    }
}

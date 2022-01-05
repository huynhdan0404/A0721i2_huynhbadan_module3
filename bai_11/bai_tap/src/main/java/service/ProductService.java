package service;

import model.bean.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    boolean save(Product product);

    Product findById(int id);

    void update(int id, String name,double price,String status);

    void remove(int id);

    void createProduct(Product product);
}

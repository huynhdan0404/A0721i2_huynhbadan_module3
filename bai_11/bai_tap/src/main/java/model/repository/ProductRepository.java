package model.repository;

import model.bean.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();

    void save(Product product);

    Product findById(int id);

    void update(int id, String name,double price,String status);

    void remove(int id);

    void createProduct(Product product);
}

package service.Impl;

import model.bean.Product;
import model.repository.ProductRepository;
import model.repository.impl.ProductRepositoryImpl;
import service.ProductService;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    ProductRepository productRepository = new ProductRepositoryImpl();
    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public boolean save(Product product) {
        return false;
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(int id, String name, double price, String status) {
        productRepository.update(id,name,price,status);
    }

    @Override
    public void remove(int id) {
        productRepository.remove(id);
    }

    @Override
    public void createProduct(Product product) {
       productRepository.createProduct(product);
    }


}

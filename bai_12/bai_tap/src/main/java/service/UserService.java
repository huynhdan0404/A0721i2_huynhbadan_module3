package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    List<User> findAll();

    User findById(String id);

    void save(String id, String name, String email,String country);

    boolean createUser(User user);

    void delete(String id) throws SQLException;
}

package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserRepository {
    List<User> findAll();

    User findById(String id);

    void save(String id,String name, String email,String country);

    void createUser(User user);

    void delete(String id) throws SQLException;
}

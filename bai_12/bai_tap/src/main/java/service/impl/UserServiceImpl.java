package service.impl;

import com.sun.javafx.iio.gif.GIFImageLoaderFactory;
import model.User;
import repository.UserRepository;
import repository.impl.UserRepositoryImpl;
import service.UserService;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {
    private UserRepository userRepository = new UserRepositoryImpl();
    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(String id) {
        return userRepository.findById(id);
    }

    @Override
    public void save(String id, String name, String email, String country) {
        userRepository.save(id,name,email,country);
    }

    @Override
    public boolean createUser(User user) {
        User user1 = findById(user.getId().toString());
        if (user1 != null){
            return false;
        }else {
            userRepository.createUser(user);
            return true;
        }
    }

    @Override
    public void delete(String id) throws SQLException {
        userRepository.delete(id);
    }
}

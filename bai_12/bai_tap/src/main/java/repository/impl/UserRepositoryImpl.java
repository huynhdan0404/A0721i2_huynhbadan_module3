package repository.impl;

import model.User;
import repository.UserRepository;

import javax.swing.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements UserRepository {
    private BaseRepository baseRepository = new BaseRepository();

    @Override
    public List<User> findAll() {
        List<User> userList =new ArrayList<>();
        try {
            PreparedStatement preparedStatement = this.baseRepository.getConnection().
                    prepareStatement("select * from users");
            ResultSet resultSet = preparedStatement.executeQuery();
            User user;
            while (resultSet.next()){
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public User findById(String id) {
        try {
            PreparedStatement preparedStatement = baseRepository.getConnection().
                prepareStatement("select * from users where id = ?");
                preparedStatement.setString(1,id);
                ResultSet resultSet = preparedStatement.executeQuery();
                User user = null;
                while (resultSet.next()){
                    user = new User();
                    user.setId(resultSet.getInt("id"));
                    user.setName(resultSet.getString("name"));
                    user.setEmail(resultSet.getString("email"));
                    user.setCountry(resultSet.getString("country"));
                    break;
                }
                return user;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }

    @Override
    public void save(String id, String name, String email, String country) {
        try {
            PreparedStatement preparedStatement = baseRepository.getConnection().
                    prepareStatement("update users set name = ?, email = ?,country = ? where id = ?");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,email);
            preparedStatement.setString(3,country);
            preparedStatement.setString(4,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void createUser(User user) {
        try {
            PreparedStatement preparedStatement = baseRepository.getConnection().
                prepareStatement("insert into users(id,name,email,country) value (?,?,?,?)");
                preparedStatement.setString(1,user.getId().toString());
                preparedStatement.setString(2,user.getName());
                preparedStatement.setString(3,user.getEmail());
                preparedStatement.setString(4,user.getCountry());
                preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(String id) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = baseRepository.getConnection().
                prepareStatement("delete from users where id = ?");
                preparedStatement.setString(1, id);
                preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

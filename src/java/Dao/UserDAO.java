/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.User;
import DB.DBConnect;
import Model.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Hayashi
 */
public class UserDAO {
    public User getUserByEmail(String email) {
        String sql = "SELECT * FROM [User] WHERE gmail = ?";
        User user = null;

         try {
        Connection connection = new DBConnect().getConnection();

        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, email); // Email (hoặc username) được truyền vào
        ResultSet rs = ps.executeQuery();

        if (rs.next()) { // Lấy dữ liệu người dùng từ ResultSet
            user = new User(
                rs.getInt("user_id"),
                rs.getString("name"),
                rs.getBoolean("gender"),
                rs.getDate("DOB"),
                rs.getString("phone"),
                rs.getString("address"),
                rs.getString("gmail"),
                rs.getString("avatar"),
                rs.getInt("account_id"),
                rs.getBoolean("status")
            );
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
        return user;
    }

    public User getUserById(int id) {
        String sql = "select * from [User] where user_id = ?";
        User user = null;

        try {
            Connection connection = new DBConnect().getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (user == null) {
                    user = new User();
                }
                user.setUserId(id);
                user.setAccountId(rs.getInt("account_id"));
                user.setAddress(rs.getString("address"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
                user.setAvatar(rs.getString("avatar"));
                user.setStatus(rs.getBoolean("status"));

                rs.close();
                ps.close();
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public void insertUser(User user) {
        String sql = "insert into [User] values(?,?,?,?,?,?,?,?,?)";

        try {
            Connection connection = new DBConnect().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setBoolean(2, user.getGender());
            ps.setDate(3, user.getDOB());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getGmail());
            ps.setString(7, user.getAvatar());
            ps.setInt(8, user.getAccountId());
            ps.setBoolean(9, user.getStatus());

            ps.executeUpdate();

            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeUserStatus(int id, Boolean status) {
        String sql = "UPDATE [User] SET status = ? WHERE id = ?";

        try {
            Connection connection = new DBConnect().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setBoolean(1, status);
            ps.setInt(2, id);

            ps.executeUpdate();

            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        String sql = "UPDATE [User]" +
                "SET name = ?," +
                "gender = ?," +
                "DOB = ?," +
                "phone = ?," +
                "address = ?," +
                "gmail = ?," +
                "avatar = ?," +
                "status = ?" +
                "where id = ?";

        try {
            Connection connection = new DBConnect().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setBoolean(2, user.getGender());
            ps.setDate(3, user.getDOB());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getGmail());
            ps.setString(7, user.getAvatar());
            ps.setBoolean(8, user.getStatus());
            ps.setInt(9, user.getUserId());

            ps.executeUpdate();

            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     public static void main(String[] args) throws SQLException {
        UserDAO dao = new UserDAO();
        User acc = dao.getUserByEmail("thientrieu20002@gmail.com");
//        dao.changePassword("123123", acc.getAccount_id());
//        String email = " or ""="";
//        Account test = dao.validateCustomer("'' or 1 = 1", "'' or 1 = 1");
//        System.out.println(test);
        if (acc != null) {
            System.out.println(acc);
        } else {
            System.out.println("Customer not found.");
        }

    }
}

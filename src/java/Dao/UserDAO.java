/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.User;
import DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Hayashi
 */
public class UserDAO {
    public User getUserById(int id) {
        String sql = "select * from [User] where user_id = ?";
        User user = null;

        try {
            Connection connection = new DBConnect().getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);
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
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}

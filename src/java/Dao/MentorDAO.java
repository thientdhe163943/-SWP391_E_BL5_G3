/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.User;
import java.util.logging.Logger;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class MentorDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(MentorDAO.class.getName());

    public List<User> getAllMentor() {
        List<User> list = new ArrayList<>();
        String query = """
                       select * from [User] u
                       join role r on u.user_id = r.user_id 
                       where r.role_name = 'Mentor'""";
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                User mentor = new User();
                mentor.setName(rs.getString("Name"));
                // Map rs to Object fields here
                list.add(mentor);
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return list;
    }

    public User getById(int id) {
        User user = null;
        String query = "select * from [User] where user_id = ?";

        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUser_id(id);
                user.setAccount_id(rs.getInt("account_id"));
                user.setAddress(rs.getString("address"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
                user.setAvatar(rs.getString("avatar"));
                user.setStatus(rs.getBoolean("status"));
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return user;
    }

    public static void main(String[] args) {
        MentorDAO mentorDAO = new MentorDAO();
        List<User> list = mentorDAO.getAllMentor();
        User mentor = mentorDAO.getById(1);
        System.out.println(mentor.getName());
    }
}

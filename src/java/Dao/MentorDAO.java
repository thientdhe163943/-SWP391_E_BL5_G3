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
                mentor.setUserId(rs.getInt("user_id"));
                mentor.setAccountId(rs.getInt("account_id"));
                mentor.setAddress(rs.getString("address"));
                mentor.setName(rs.getString("name"));
                mentor.setGender(rs.getBoolean("gender"));
                mentor.setDOB(rs.getDate("DOB"));
                mentor.setPhone(rs.getString("phone"));
                mentor.setGmail(rs.getString("email"));
                mentor.setAvatar(rs.getString("avatar"));
                mentor.setStatus(rs.getBoolean("status"));
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
                user.setUserId(id);
                user.setAccountId(rs.getInt("account_id"));
                user.setAddress(rs.getString("address"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("email"));
                user.setAvatar(rs.getString("avatar"));
                user.setStatus(rs.getBoolean("status"));
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return user;
    }

    public User getByAccountId(int accountId) {
        User user = null;
        String query = """
                    select * from [User] u 
                    join Account a 
                    on u.account_id = a.account_id
                    where u.account_id = ?""";

        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, accountId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setAccountId(rs.getInt("account_id"));
                user.setAddress(rs.getString("address"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("email"));
                user.setAvatar(rs.getString("avatar"));
                user.setStatus(rs.getBoolean("status"));
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return user;
    }

    public List<User> getMenteesById(int mentorId) {
        List<User> list = new ArrayList<>();
        String query = """
                        SELECT DISTINCT 
                            u.user_id, 
                            u.name, 
                            u.gender, 
                            u.DOB, 
                            u.phone, 
                            u.address, 
                            u.email, 
                            u.avatar, 
                            u.account_id, 
                            u.status
                        FROM Request r
                        JOIN [User] u ON r.mentee_id = u.user_id
                        WHERE r.mentor_id = ?;""";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, mentorId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User mentor = new User();
                mentor.setUserId(rs.getInt("user_id"));
                mentor.setAccountId(rs.getInt("account_id"));
                mentor.setAddress(rs.getString("address"));
                mentor.setName(rs.getString("name"));
                mentor.setGender(rs.getBoolean("gender"));
                mentor.setDOB(rs.getDate("DOB"));
                mentor.setPhone(rs.getString("phone"));
                mentor.setGmail(rs.getString("email"));
                mentor.setAvatar(rs.getString("avatar"));
                mentor.setStatus(rs.getBoolean("status"));
                // Map rs to Object fields here
                list.add(mentor);
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return list;
    }

    public List<User> getMenteesById(int mentorId, int index) {
        List<User> list = new ArrayList<>();
        String query = """
                        SELECT DISTINCT 
                            u.user_id, 
                            u.name, 
                            u.gender, 
                            u.DOB, 
                            u.phone, 
                            u.address, 
                            u.email, 
                            u.avatar, 
                            u.account_id, 
                            u.status
                        FROM Request r
                        JOIN [User] u ON r.mentee_id = u.user_id
                        WHERE r.mentor_id = ?
                        ORDER BY u.user_id -- Thứ tự sắp xếp
                        OFFSET ? ROWS
                        FETCH FIRST 2 ROWS ONLY;""";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, mentorId);
            stm.setInt(2, (index - 1) * 2);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User mentor = new User();
                mentor.setUserId(rs.getInt("user_id"));
                mentor.setAccountId(rs.getInt("account_id"));
                mentor.setAddress(rs.getString("address"));
                mentor.setName(rs.getString("name"));
                mentor.setGender(rs.getBoolean("gender"));
                mentor.setDOB(rs.getDate("DOB"));
                mentor.setPhone(rs.getString("phone"));
                mentor.setGmail(rs.getString("email"));
                mentor.setAvatar(rs.getString("avatar"));
                mentor.setStatus(rs.getBoolean("status"));
                // Map rs to Object fields here
                list.add(mentor);
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return list;
    }

    public int getNumberPage(int mentorId) {
        String query = """
                        SELECT COUNT(DISTINCT u.user_id)
                        FROM Request r
                        JOIN [User] u ON r.mentee_id = u.user_id
                        WHERE r.mentor_id = ?""";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, mentorId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                int total = rs.getInt(1);
                int countPage = total / 2;
                if (total % 2 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return 0;
    }

    public static void main(String[] args) {
        MentorDAO mentorDAO = new MentorDAO();
        User user = mentorDAO.getByAccountId(1);
        System.out.println(mentorDAO.getNumberPage(1));
        System.out.println(user);
//        List<User> list = mentorDAO.getMenteesById(1);

    }
}

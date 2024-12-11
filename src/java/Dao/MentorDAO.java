/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.Request;
import Model.User;
import java.sql.Connection;
import java.util.logging.Logger;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

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
                       join user_role r on u.user_id = r.user_id 
                       where r.role_id = 2""";
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                User mentor = new User();
                mentor.setUserId(rs.getInt("user_id"));
                mentor.setAddress(rs.getString("address"));
                mentor.setName(rs.getString("name"));
                mentor.setGender(rs.getBoolean("gender"));
                mentor.setDOB(rs.getDate("DOB"));
                mentor.setPhone(rs.getString("phone"));
                mentor.setEmail(rs.getString("email"));
                mentor.setAvatar(rs.getString("avatar"));
                mentor.setStatus(rs.getBoolean("status"));
                mentor.setPassword(rs.getString("password"));
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
                user.setPassword(rs.getString("password"));
                user.setAddress(rs.getString("address"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
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
                user.setPassword(rs.getString("password"));
                user.setAddress(rs.getString("address"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getBoolean("gender"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
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
                mentor.setPassword(rs.getString("password"));
                mentor.setAddress(rs.getString("address"));
                mentor.setName(rs.getString("name"));
                mentor.setGender(rs.getBoolean("gender"));
                mentor.setDOB(rs.getDate("DOB"));
                mentor.setPhone(rs.getString("phone"));
                mentor.setEmail(rs.getString("email"));
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
                mentor.setPassword(rs.getString("password"));
                mentor.setAddress(rs.getString("address"));
                mentor.setName(rs.getString("name"));
                mentor.setGender(rs.getBoolean("gender"));
                mentor.setDOB(rs.getDate("DOB"));
                mentor.setPhone(rs.getString("phone"));
                mentor.setEmail(rs.getString("email"));
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

    public int getNumberPageMentees(int mentorId) {
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

    public int getNumberPageRequests(int mentorId) {
        String query = """
                        SELECT COUNT(*)
                        FROM Request r
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

    public List<Request> getRequestsByMentor(int mentorId, int index) {
        List<Request> requestList = new ArrayList<>();
        String sql = """
                 SELECT * FROM Request r 
                 WHERE mentor_id = ?
                 ORDER BY r.request_id 
                 OFFSET ? ROWS 
                 FETCH FIRST 2 ROWS ONLY
                 """;

        try (PreparedStatement stm = connection.prepareStatement(sql)) {

            stm.setInt(1, mentorId);
            stm.setInt(2, (index - 1) * 2);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Request request = new Request();
                    request.setRequestId(rs.getInt("request_id"));
                    request.setTitle(rs.getString("title"));
                    request.setDeadline(rs.getDate("deadline"));
                    request.setContent(rs.getString("content"));
                    request.setMentor(getById(rs.getInt("mentor_id"))); // Assuming `getById` fetches a `User` object
                    request.setMentee(getById(rs.getInt("mentee_id"))); // Assuming `getById` fetches a `User` object
                    request.setStatus(rs.getInt("status"));
                    requestList.add(request);
                }
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi lấy danh sách Request theo mentor_id: {0}", e.getMessage());
        }
        return requestList;
    }
    
    public List<Request> getStatusRequests(int mentorId, int status) {
        List<Request> requestList = new ArrayList<>();
        String sql = """
                 SELECT * FROM Request r 
                 WHERE mentor_id = ? and status = ?;
                 """;

        try (PreparedStatement stm = connection.prepareStatement(sql)) {

            stm.setInt(1, mentorId);
            stm.setInt(2, status);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Request request = new Request();
                    request.setRequestId(rs.getInt("request_id"));
                    request.setTitle(rs.getString("title"));
                    request.setDeadline(rs.getDate("deadline"));
                    request.setContent(rs.getString("content"));
                    request.setMentor(getById(rs.getInt("mentor_id"))); // Assuming `getById` fetches a `User` object
                    request.setMentee(getById(rs.getInt("mentee_id"))); // Assuming `getById` fetches a `User` object
                    request.setStatus(rs.getInt("status"));
                    requestList.add(request);
                }
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi lấy danh sách Request theo mentor_id: {0}", e.getMessage());
        }
        return requestList;
    }

    public static void main(String[] args) {
        MentorDAO mentorDAO = new MentorDAO();
        User user = mentorDAO.getByAccountId(1);
        

    }
}

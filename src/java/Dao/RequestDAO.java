/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Request;
import DB.DBConnect;
import Model.Skill;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hayashi
 */
public class RequestDAO extends DBConnect {

    private final UserDAO userDao = new UserDAO();
    private static final Logger logger = Logger.getLogger(RequestDAO.class.getName());

    public Request getRequestById(int id) {
        String sql = "SELECT * from Request WHERE request_id = ?";
        

        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery();) {
                if (rs.next()) {
                    Request request = new Request();
                    request.setRequestId(id);
                    request.setTitle(rs.getString("title"));
                    request.setDeadline(rs.getDate("deadline"));
                    request.setContent(rs.getString("content"));
                    
                    User mentor = new User();
                    mentor.setUserId(rs.getInt("mentor_id"));
                    request.setMentor(mentor);
                    
                    User mentee = new User();
                    mentor.setUserId(rs.getInt("mentee_id"));
                    request.setMentee(mentee);
                            
                    request.setStatus(rs.getInt("status"));
                    
                    return request;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public ArrayList<Request> getAllRequests(String search) {
        ArrayList<Request> requestList = null;
        String sql = "SELECT * from Request";
        if (search != null && !search.trim().isEmpty()) {
            sql += " WHERE title LIKE '%" + search + "%'";
        }
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery();) {

            while (rs.next()) {
                if (requestList == null) {
                    requestList = new ArrayList<>();
                }

                Request request = new Request();
                request.setRequestId(rs.getInt("request_id"));
                request.setTitle(rs.getString("title"));
                request.setDeadline(rs.getDate("deadline"));
                request.setContent(rs.getString("content"));
                User mentor = new User();
                    mentor.setUserId(rs.getInt("mentor_id"));
                    request.setMentor(mentor);
                    
                    User mentee = new User();
                    mentor.setUserId(rs.getInt("mentee_id"));
                    request.setMentee(mentee);
                request.setStatus(rs.getInt("status"));
                requestList.add(request);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return requestList;
    }

    public void addRequest(Request request, ArrayList<Integer> skillList) {
        String sql = "INSERT INTO Request values(?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, request.getTitle());
            ps.setDate(2, request.getDeadline());
            ps.setString(3, request.getContent());
            ps.setNull(4, java.sql.Types.INTEGER);
            ps.setInt(5, request.getMentee().getUserId());
            ps.setInt(6, request.getStatus());
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                ResultSet generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int requestId = generatedKeys.getInt(1);

                    for (int skillId : skillList) {
                        addRequestSkill(requestId, skillId);
                    }
                }
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateRequest(Request request, ArrayList<Integer> skills) {
        String sql = "UPDATE Request SET title = ?,"
                + "deadline = ?,"
                + "content = ?,"
                + "mentor_id = ?,"
                + "mentee_id = ?,"
                + "status = ?"
                + "WHERE request_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, request.getTitle());
            ps.setDate(2, request.getDeadline());
            ps.setString(3, request.getContent());

            if (request.getMentor() == null) {
                ps.setNull(4, java.sql.Types.INTEGER);
            } else {
                ps.setInt(4, request.getMentor().getUserId());
            }

            ps.setInt(5, request.getMentee().getUserId());
            ps.setInt(6, request.getStatus());
            ps.setInt(7, request.getRequestId());

            ps.executeUpdate();

            deleteRequestSkill(request.getRequestId());

            for (int skillId : skills) {
                addRequestSkill(request.getRequestId(), skillId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addRequestSkill(int requestId, int skillId) {
        String sql = "INSERT INTO Skill_Request VALUES(?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, requestId);
            ps.setInt(2, skillId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Integer> getSkillByRequestId(int requestId) {
        ArrayList<Integer> selectedSkills = new ArrayList();
        String sql = "SELECT * FROM Skill_Request WHERE request_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, requestId);
            try (ResultSet rs = ps.executeQuery();) {
                while (rs.next()) {
                    selectedSkills.add(rs.getInt("skill_id"));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return selectedSkills;
    }

    public ArrayList<Request> getAllVisibleRequests(String search) {
        ArrayList<Request> visibleRequestList = new ArrayList();
        String sql = "SELECT * FROM Request WHERE status = 1 or status = 0";
        if (search != null && !search.trim().isEmpty()) {
            sql += " AND title LIKE '%" + search + "%'";
        }

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Request request = new Request();

                request.setRequestId(rs.getInt("request_id"));
                request.setTitle(rs.getString("title"));
                request.setDeadline(rs.getDate("deadline"));
                request.setContent(rs.getString("content"));
                User mentor = new User();
                    mentor.setUserId(rs.getInt("mentor_id"));
                    request.setMentor(mentor);
                    
                    User mentee = new User();
                    mentor.setUserId(rs.getInt("mentee_id"));
                    request.setMentee(mentee);
                request.setStatus(rs.getInt("status"));

                visibleRequestList.add(request);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return visibleRequestList;
    }

    private void deleteRequestSkill(int requestId) {
        String sqlDelete = "DELETE FROM Request_Skill WHERE requestId = ?";

        try (PreparedStatement ps = connection.prepareStatement(sqlDelete)) {
            ps.setInt(1, requestId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean updateStatus(int requestId, int status) {
        String sql = """
                 UPDATE Request
                 SET status = ?
                 WHERE request_id = ?;
                 """;
        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, status);
            ps.setInt(2, requestId);

            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0; // Trả về true nếu có ít nhất một dòng được cập nhật
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi cập nhật trạng thái Request: {0}", e.getMessage());
        }
        return false; // Trả về false nếu có lỗi xảy ra
    }
}

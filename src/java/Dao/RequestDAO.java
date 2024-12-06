/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Request;
import DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Statement;

/**
 *
 * @author Hayashi
 */
public class RequestDAO {

    private final UserDAO userDao = new UserDAO();
    private final DBConnect db = new DBConnect();

    public Request getRequestById(int id) {
        String sql = "SELECT * from Request WHERE id = ?";
        Request request = null;

        try {
            Connection connection = new DBConnect().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                if (request == null) {
                    request = new Request();
                }

                request.setRequestId(id);
                request.setTitle(rs.getString("title"));
                request.setDeadline(rs.getDate("deadline"));
                request.setContent(rs.getString("content"));
                request.setMentor(userDao.getUserById(rs.getInt("mentor_id")));
                request.setMentee(userDao.getUserById(rs.getInt("mentee_id")));
                request.setStatus(rs.getInt("status"));

                rs.close();
                ps.close();
                connection.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return request;
    }

    public ArrayList<Request> getAllRequests(String search) {
        ArrayList<Request> requestList = null;
        String sql = "SELECT * from Request";
        if (search != null && !search.trim().isEmpty()) {
            sql += " WHERE title LIKE '%" + search + "%'";
        }
        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                if (requestList == null) {
                    requestList = new ArrayList<>();
                }

                Request request = new Request();
                request.setRequestId(rs.getInt("request_id"));
                request.setTitle(rs.getString("title"));
                request.setDeadline(rs.getDate("deadline"));
                request.setContent(rs.getString("content"));
                request.setMentor(userDao.getUserById(rs.getInt("mentor_id")));
                request.setMentee(userDao.getUserById(rs.getInt("mentee_id")));
                request.setStatus(rs.getInt("status"));
                requestList.add(request);
            }

            rs.close();
            ps.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return requestList;
    }

    public void addRequest(Request request, ArrayList<Integer> skillList) {
        String sql = "INSERT INTO Request values(?, ?, ?, ?, ?, ?)";

        try {
            Connection connection = db.getConnection();

            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
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

            ps.close();
            connection.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateRequest(Request request) {
        String sql = "UPDATE Request SET title = ?,"
                + "deadline = ?,"
                + "content = ?,"
                + "mentor_id = ?,"
                + "mentee_id = ?,"
                + "status = ?"
                + "WHERE request_id = ?";

        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, request.getTitle());
            ps.setDate(2, request.getDeadline());
            ps.setString(3, request.getContent());
            
            if (request.getMentor() == null) {
                ps.setNull(4, java.sql.Types.INTEGER);
            } else{
                ps.setInt(4, request.getMentor().getUserId());
            }
            
            ps.setInt(5, request.getMentee().getUserId());
            ps.setInt(6, request.getStatus());
            ps.setInt(7, request.getRequestId());

            ps.executeUpdate();

            ps.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addRequestSkill(int requestId, int skillId) {
        String sql = "INSERT INTO Skill_Request VALUES(?, ?)";

        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, requestId);
            ps.setInt(2, skillId);
            ps.executeUpdate();

            ps.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

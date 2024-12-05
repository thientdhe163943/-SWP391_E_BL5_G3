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

    public ArrayList<Request> getAllRequests() {
        ArrayList<Request> requestList = null;
        String sql = "SELECT * from Request";

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

    public void addRequest(Request request) {
        String sql = "INSERT INTO Request values(?, ?, ?, ?, ?, ?)";

        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, request.getTitle());
            ps.setDate(2, request.getDeadline());
            ps.setString(3, request.getContent());
            ps.setInt(4, request.getMentor().getUserId());
            ps.setInt(5, request.getMentee().getUserId());
            ps.setInt(6, request.getStatus());

            ps.executeUpdate();

            ps.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
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
            try (Connection connection = db.getConnection(); PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, request.getTitle());
                ps.setDate(2, request.getDeadline());
                ps.setString(3, request.getContent());
                ps.setInt(4, request.getMentor().getUserId());
                ps.setInt(5, request.getMentee().getUserId());
                ps.setInt(6, request.getStatus());
                ps.setInt(7, request.getRequestId());
                
                ps.executeUpdate();
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void changeRequestStatus(int id, int status) {
        String sql = "UPDATE Request SET status = ? WHERE request_id = ?";

        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, status);
            ps.setInt(2, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Request> getSortedRequestsList(String sort) {
        ArrayList<Request> requestList = null;
        String sql = "SELECT * from Request ORDER BY ?";

        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, sort);
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
}

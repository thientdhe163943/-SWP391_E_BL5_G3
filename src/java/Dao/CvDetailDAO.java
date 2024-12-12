/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.CvDetail;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;

/**
 *
 * @author ADMIN
 */
public class CvDetailDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(CVDAO.class.getName());
    private static final CVDAO cvDAO = new CVDAO();
    private static final UserDAO userDAO = new UserDAO();

    public boolean createCVDetail(CvDetail cvDetail) {
        String sql = """
                 INSERT INTO CV_Detail (cv_id, mentee_id, comment, rating, date)
                 VALUES (?, ?, ?, ?, ?);
                 """;
        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, cvDetail.getCv().getCvId());
            ps.setInt(2, cvDetail.getMentee().getUserId());
            ps.setString(3, cvDetail.getComment());
            ps.setFloat(4, cvDetail.getRating());
            ps.setDate(5, java.sql.Date.valueOf(LocalDate.now()));

            return ps.executeUpdate() > 0; // Trả về true nếu thêm thành công
        } catch (SQLException e) {
            logger.severe("Lỗi khi thêm CVDetail: " + e.getMessage());
        }
        return false; // Trả về false nếu xảy ra lỗi
    }

    public CvDetail readCVDetailById(int cvDetailId) {
        String sql = """
                 SELECT * FROM CV_Detail 
                 WHERE cv_detail_id = ?;
                 """;
        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, cvDetailId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    CvDetail cvDetail = new CvDetail();
                    cvDetail.setCvDetailId(rs.getInt("cv_detail_id"));
                    cvDetail.setCv(cvDAO.getCvById(rs.getInt("cv_id"))); // Giả định bạn có phương thức này
                    cvDetail.setMentee(userDAO.getUserByIdd(rs.getInt("mentee_id"))); // Giả định bạn có phương thức này
                    cvDetail.setComment(rs.getString("comment"));
                    cvDetail.setRating(rs.getFloat("rating"));
                    cvDetail.setDate(rs.getDate("date").toLocalDate());
                    return cvDetail;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi đọc CVDetail: " + e.getMessage());
        }
        return null; // Trả về null nếu không tìm thấy
    }

    public boolean updateCVDetail(CvDetail cvDetail) {
        String sql = """
                 UPDATE CV_Detail 
                 SET cv_id = ?, mentee_id = ?, comment = ?, rating = ?, date = ?
                 WHERE cv_detail_id = ?;
                 """;
        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, cvDetail.getCv().getCvId());
            ps.setInt(2, cvDetail.getMentee().getUserId());
            ps.setString(3, cvDetail.getComment());
            ps.setFloat(4, cvDetail.getRating());
            ps.setDate(5, java.sql.Date.valueOf(cvDetail.getDate()));
            ps.setInt(6, cvDetail.getCvDetailId());

            return ps.executeUpdate() > 0; // Trả về true nếu cập nhật thành công
        } catch (SQLException e) {
            logger.severe("Lỗi khi cập nhật CVDetail: " + e.getMessage());
        }
        return false; // Trả về false nếu có lỗi
    }

    public boolean deleteCVDetail(int cvDetailId) {
        String sql = """
                 DELETE FROM CV_Detail 
                 WHERE cv_detail_id = ?;
                 """;
        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, cvDetailId);
            return ps.executeUpdate() > 0; // Trả về true nếu xóa thành công
        } catch (SQLException e) {
            logger.severe("Lỗi khi xóa CVDetail: " + e.getMessage());
        }
        return false; // Trả về false nếu xảy ra lỗi
    }

    public List<CvDetail> getAllByCvId(int cvId) {
        List<CvDetail> cvDetails = new ArrayList<>();
        String sql = """
                 SELECT * FROM CV_Detail 
                 WHERE cv_id = ?;
                 """;

        try (PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, cvId);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    CvDetail cvDetail = new CvDetail();
                    cvDetail.setCvDetailId(rs.getInt("cv_detail_id"));
//                    cvDetail.setCv(cvDAO.getCvById(rs.getInt("cv_id")));
                    cvDetail.setMentee(userDAO.getUserByIdd(rs.getInt("mentee_id")));
                    cvDetail.setComment(rs.getString("comment"));
                    cvDetail.setRating(rs.getFloat("rating"));
                    cvDetail.setDate(rs.getDate("date").toLocalDate());

                    cvDetails.add(cvDetail);
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách CVDetail theo cv_id: " + e.getMessage());
        }
        return cvDetails;
    }
    
    public static void main(String[] args) {
        CvDetailDAO cvDetailDAO = new CvDetailDAO();
        List<CvDetail> lists = cvDetailDAO.getAllByCvId(1);
        for (CvDetail list : lists) {
            System.out.println(list.getComment());
        }
    }
}

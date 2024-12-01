/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.CV;
import Model.CvDetail;
import Model.CvSkill;
import Model.Education;
import Model.Skill;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

/**
 *
 * @author ADMIN
 */
public class CVDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(CVDAO.class.getName());
    private final CvSkillDAO cvSkillDAO = new CvSkillDAO();
    private final EducationDAO educationDAO = new EducationDAO();
    // Lấy tất cả CV
    public List<CV> getAllCVs() {
        List<CV> list = new ArrayList<>();
        String query = "SELECT * FROM CV";
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                CV cv = new CV();
                cv.setCvId(rs.getInt("cv_id"));
                cv.setUserId(rs.getInt("user_id"));
                cv.setIntroduction(rs.getString("introduction"));
                cv.setExperience(rs.getInt("experience"));

                // Giả định các phương thức lấy danh sách skills, education, và details sẽ được cài đặt
                cv.setCvSkillList(cvSkillDAO.getCvSkillsByCvId(cv.getCvId()));
                cv.setEduList(educationDAO.getEducationsByCvId(cv.getCvId()));
                list.add(cv);
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi lấy danh sách CV: {0}", e.getMessage());
        }
        return list;
    }

    // Lấy CV theo cvId
    public CV getCvById(int cvId) {
        String query = """
                       SELECT cv_id, user_id, introduction, experience
                       FROM CV
                       WHERE cv_id = ?
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    CV cv = new CV();
                    cv.setCvId(rs.getInt("cv_id"));
                    cv.setUserId(rs.getInt("user_id"));
                    cv.setIntroduction(rs.getString("introduction"));
                    cv.setExperience(rs.getInt("experience"));
                    return cv;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy CV theo cvId: " + e.getMessage());
        }
        return null;
    }
    public CV getCvByUserId(int userID) {
        String query = """
                       SELECT cv_id, user_id, introduction, experience
                       FROM CV
                       WHERE user_id = ?
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, userID);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    CV cv = new CV();
                    cv.setCvId(rs.getInt("cv_id"));
                    cv.setUserId(rs.getInt("user_id"));
                    cv.setIntroduction(rs.getString("introduction"));
                    cv.setExperience(rs.getInt("experience"));
                    return cv;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy CV theo cvId: " + e.getMessage());
        }
        return null;
    }

    // Thêm mới CV
    public boolean addCV(CV cv) {
        String query = "INSERT INTO CV (user_id, introduction, experience) VALUES (?, ?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cv.getUserId());
            stm.setString(2, cv.getIntroduction());
            stm.setObject(3, cv.getExperience());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi thêm CV: {0}", e.getMessage());
        }
        return false;
    }

    // Cập nhật CV
    public boolean updateCV(CV cv) {
        String query = "UPDATE CV SET user_id = ?, introduction = ?, experience = ? WHERE cv_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cv.getUserId());
            stm.setString(2, cv.getIntroduction());
            stm.setObject(3, cv.getExperience());
            stm.setInt(4, cv.getCvId());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi cập nhật CV: {0}", e.getMessage());
        }
        return false;
    }

    // Lấy chi tiết CV (nếu có bảng CvDetails)
    private ArrayList<CvDetail> getCvDetailsByCVId(int cvId) {
        // Cài đặt query để lấy danh sách chi tiết CV theo cvId từ database
        return new ArrayList<>();
    }

    public static void main(String[] args) {
        CVDAO cvdao = new CVDAO();
        CV cv1 = cvdao.getCvByUserId(1);
        List<CvSkill> cvSkills = cv1.getCvSkillList();
        for (CvSkill cvSkill : cvSkills) {
            System.out.println(cvSkill.getSkill().getSkillName());
        }
        
    }
}

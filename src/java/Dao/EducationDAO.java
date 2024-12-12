/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.Education;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class EducationDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(EducationDAO.class.getName());

    // Thêm mới Education
    public boolean addEducation(Education education) {
        String query = """
                       INSERT INTO Education (cv_id, school_name, major)
                       VALUES (?, ?, ?)
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, education.getCvId());
            stm.setString(2, education.getSchoolName());
            stm.setString(3, education.getMajor());
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi thêm Education: " + e.getMessage());
            return false;
        }
    }

    // Cập nhật Education
    public boolean updateEducation(Education education) {
        String query = """
                       UPDATE Education
                       SET school_name = ?, major = ?
                       WHERE edu_id = ?
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setString(1, education.getSchoolName());
            stm.setString(2, education.getMajor());
            stm.setInt(3, education.getEduId());
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi cập nhật Education: " + e.getMessage());
            return false;
        }
    }

    // Xóa Education
    public boolean deleteEducation(int eduId) {
        String query = """
                       DELETE FROM Education
                       WHERE edu_id = ?
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, eduId);
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi xóa Education: " + e.getMessage());
            return false;
        }
    }

    // Lấy danh sách tất cả Education
    public List<Education> getAllEducations() {
        List<Education> list = new ArrayList<>();
        String query = """
                       SELECT edu_id, cv_id, school_name, major
                       FROM Education
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                Education education = new Education();
                education.setEduId(rs.getInt("edu_id"));
                education.setCvId(rs.getInt("cv_id"));
                education.setSchoolName(rs.getString("school_name"));
                education.setMajor(rs.getString("major"));
                list.add(education);
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách Education: " + e.getMessage());
        }
        return list;
    }

    // Lấy Education theo eduId
    public Education getEducationById(int eduId) {
        String query = """
                       SELECT edu_id, cv_id, school_name, major
                       FROM Education
                       WHERE edu_id = ?
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, eduId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    Education education = new Education();
                    education.setEduId(rs.getInt("edu_id"));
                    education.setCvId(rs.getInt("cv_id"));
                    education.setSchoolName(rs.getString("school_name"));
                    education.setMajor(rs.getString("major"));
                    return education;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy Education theo eduId: " + e.getMessage());
        }
        return null;
    }

    // Lấy danh sách Education theo cvId
    public List<Education> getEducationsByCvId(int cvId) {
        List<Education> list = new ArrayList<>();
        String query = """
                   SELECT edu_id, cv_id, school_name, major
                   FROM Education
                   WHERE edu_id = ?
                   """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Education education = new Education();
                    education.setEduId(rs.getInt("edu_id"));
                    education.setCvId(rs.getInt("cv_id"));
                    education.setSchoolName(rs.getString("school_name"));
                    education.setMajor(rs.getString("major"));
                    list.add(education);
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách Education theo cvId: " + e.getMessage());
        }
        return list;
    }
    
    public static void main(String[] args) {
        EducationDAO educationDAO = new EducationDAO();
        System.out.println(educationDAO.deleteEducation(2));
        
    }
}

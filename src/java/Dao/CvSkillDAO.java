/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.CvSkill;
import Model.Skill;
import Model.CV;

import DB.DBConnect;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class CvSkillDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(CvSkillDAO.class.getName());

    // Lấy tất cả CvSkill
    public List<CvSkill> getAllCvSkills() {
        List<CvSkill> list = new ArrayList<>();
        String query = """
                       SELECT cs.cv_skill_id, 
                              s.skill_id, s.skill_name,
                              c.cv_id, c.user_id
                       FROM CV_Skill cs
                       JOIN Skill s ON cs.skill_id = s.skill_id
                       JOIN CV c ON cs.cv_id = c.cv_id
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                CvSkill cvSkill = new CvSkill();
                cvSkill.setCvSkillId(rs.getInt("cv_skill_id"));

                // Map Skill
                Skill skill = new Skill();
                skill.setSkillId(rs.getInt("skill_id"));
                skill.setSkillName(rs.getString("skill_name"));

                // Map CV
                CV cv = new CV();
                cv.setCvId(rs.getInt("cv_id"));
                cv.setUserId(rs.getInt("user_id"));

                cvSkill.setSkill(skill);
                cvSkill.setCv(cv);

                list.add(cvSkill);
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách CvSkill: " + e.getMessage());
        }
        return list;
    }

    // Lấy danh sách CvSkill theo userId
    public List<CvSkill> getCvSkillsByUserId(int userId) {
        List<CvSkill> list = new ArrayList<>();
        String query = """
                   SELECT cs.cv_skill_id, 
                          s.skill_id, s.skill_name,
                          c.cv_id, c.user_id
                   FROM CV_Skill cs
                   JOIN Skill s ON cs.skill_id = s.skill_id
                   JOIN CV c ON cs.cv_id = c.cv_id
                   WHERE c.user_id = ?
                   """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, userId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    CvSkill cvSkill = new CvSkill();
                    cvSkill.setCvSkillId(rs.getInt("cv_skill_id"));

                    // Map Skill
                    Skill skill = new Skill();
                    skill.setSkillId(rs.getInt("skill_id"));
                    skill.setSkillName(rs.getString("skill_name"));

                    // Map CV
                    CV cv = new CV();
                    cv.setCvId(rs.getInt("cv_id"));
                    cv.setUserId(rs.getInt("user_id"));

                    cvSkill.setSkill(skill);
                    cvSkill.setCv(cv);

                    list.add(cvSkill);
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách CvSkill theo userId: " + e.getMessage());
        }
        return list;
    }

    // Lấy danh sách CvSkill theo cvId
    public List<CvSkill> getCvSkillsByCvId(int cvId) {
        List<CvSkill> list = new ArrayList<>();
        String query = """
                   SELECT cs.cv_skill_id, 
                          s.skill_id, s.skill_name,
                          c.cv_id, c.user_id
                   FROM Cv_Skill cs
                   JOIN Skill s ON cs.skill_id = s.skill_id
                   JOIN CV c ON cs.cv_id = c.cv_id
                   WHERE c.cv_id = ?
                   """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    CvSkill cvSkill = new CvSkill();
                    cvSkill.setCvSkillId(rs.getInt("cv_skill_id"));

                    // Map Skill
                    Skill skill = new Skill();
                    skill.setSkillId(rs.getInt("skill_id"));
                    skill.setSkillName(rs.getString("skill_name"));

                    // Map CV
                    CV cv = new CV();
                    cv.setCvId(rs.getInt("cv_id"));
                    cv.setUserId(rs.getInt("user_id"));

                    cvSkill.setSkill(skill);
                    cvSkill.setCv(cv);

                    list.add(cvSkill);
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách CvSkill theo cvId: " + e.getMessage());
        }
        return list;
    }

    // Thêm mới CvSkill
    public boolean addCvSkill(CvSkill cvSkill) {
        String query = "INSERT INTO CV_Skill (cv_id, skill_id) VALUES (?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvSkill.getCv().getCvId());
            stm.setInt(2, cvSkill.getSkill().getSkillId());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi thêm CvSkill: " + e.getMessage());
        }
        return false;
    }

    // Cập nhật CvSkill
    public boolean updateCvSkill(CvSkill cvSkill) {
        String query = "UPDATE CV_Skill SET cv_id = ?, skill_id = ? WHERE cv_skill_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvSkill.getCv().getCvId());
            stm.setInt(2, cvSkill.getSkill().getSkillId());
            stm.setInt(3, cvSkill.getCvSkillId());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi cập nhật CvSkill: " + e.getMessage());
        }
        return false;
    }

    // Xóa CvSkill
    public boolean deleteCvSkill(int cvSkillId) {
        String query = "DELETE FROM CV_Skill WHERE cv_skill_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvSkillId);
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi xóa CvSkill: " + e.getMessage());
        }
        return false;
    }

    // Lấy CvSkill theo ID
    public CvSkill getCvSkillById(int cvSkillId) {
        String query = """
                       SELECT cs.cv_skill_id, 
                              s.skill_id, s.skill_name,
                              c.cv_id, c.user_id
                       FROM CV_Skill cs
                       JOIN Skill s ON cs.skill_id = s.skill_id
                       JOIN CV c ON cs.cv_id = c.cv_id
                       WHERE cs.cv_skill_id = ?
                       """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cvSkillId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    CvSkill cvSkill = new CvSkill();
                    cvSkill.setCvSkillId(rs.getInt("cv_skill_id"));

                    // Map Skill
                    Skill skill = new Skill();
                    skill.setSkillId(rs.getInt("skill_id"));
                    skill.setSkillName(rs.getString("skill_name"));

                    // Map CV
                    CV cv = new CV();
                    cv.setCvId(rs.getInt("cv_id"));
                    cv.setUserId(rs.getInt("user_id"));

                    cvSkill.setSkill(skill);
                    cvSkill.setCv(cv);

                    return cvSkill;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy CvSkill theo ID: " + e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        CvSkillDAO cvSkillDAO = new CvSkillDAO();
        List<CvSkill> cvSkills = cvSkillDAO.getCvSkillsByCvId(1);
        for (CvSkill cvSkill : cvSkills) {
            System.out.println(cvSkill.getSkill().getSkillName());
        }
    }
}

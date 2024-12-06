/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.Skill;
import java.util.List;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class SkillDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(SkillDAO.class.getName());

    // Lấy tất cả Skills
    public List<Skill> getAllSkills() {
        List<Skill> list = new ArrayList<>();
        String query = "SELECT * FROM Skill";
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                Skill skill = new Skill();
                skill.setSkillId(rs.getInt("skill_id"));
                skill.setSkillName(rs.getString("skill_name"));
                list.add(skill);
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách Skill: " + e.getMessage());
        }
        return list;
    }
    
    // Lấy tất cả Skills mà không có trong CV_Skill cho cv_id cụ thể
    public List<Skill> getNotExistedSkills(int cvId) {
        List<Skill> list = new ArrayList<>();
        String query = """
                   SELECT s.skill_id, s.skill_name
                   FROM Skill s
                   LEFT JOIN CV_Skill cv ON s.skill_id = cv.skill_id AND cv.cv_id = ?
                   WHERE cv.skill_id IS NULL;
                   """;

        try (PreparedStatement stm = connection.prepareStatement(query)) {
            // Set giá trị cho tham số ? trong câu truy vấn
            stm.setInt(1, cvId);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Skill skill = new Skill();
                    skill.setSkillId(rs.getInt("skill_id"));
                    skill.setSkillName(rs.getString("skill_name"));
                    list.add(skill);
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách Skills không tồn tại trong CV_Skill: " + e.getMessage());
        }
        return list;
    }

    // Thêm mới Skill
    public boolean addSkill(Skill skill) {
        String query = "INSERT INTO Skill (skill_name) VALUES (?)";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setString(1, skill.getSkillName());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi thêm Skill: " + e.getMessage());
        }
        return false;
    }

    // Cập nhật Skill
    public boolean updateSkill(Skill skill) {
        String query = "UPDATE Skill SET skill_name = ? WHERE skill_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setString(1, skill.getSkillName());
            stm.setInt(2, skill.getSkillId());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi cập nhật Skill: " + e.getMessage());
        }
        return false;
    }

    // Xóa Skill
    public boolean deleteSkill(int skillId) {
        String query = "DELETE FROM Skill WHERE skill_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, skillId);
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi xóa Skill: " + e.getMessage());
        }
        return false;
    }

    // Lấy Skill theo ID
    public Skill getSkillById(int skillId) {
        String query = "SELECT * FROM Skill WHERE skill_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, skillId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    Skill skill = new Skill();
                    skill.setSkillId(rs.getInt("skill_id"));
                    skill.setSkillName(rs.getString("skill_name"));
                    return skill;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy Skill theo ID: " + e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        SkillDAO skillDAO = new SkillDAO();
        List<Skill> list = skillDAO.getAllSkills();
        for (Skill skill : list) {
            System.out.println(skill.getSkillName());
        }
    }
}

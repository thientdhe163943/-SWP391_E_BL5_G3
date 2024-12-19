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
    private final MentorDAO mentorDAO = new MentorDAO();
    private final CvDetailDAO cvDetailDAO = new CvDetailDAO();

    // Lấy tất cả CV
    public List<CV> getAllCVs() {
        List<CV> list = new ArrayList<>();
        String query = "SELECT * FROM CV";
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                CV cv = new CV();
                cv.setCvId(rs.getInt("cv_id"));
                cv.setApplicant(mentorDAO.getById(rs.getInt("user_id")));
                cv.setIntroduction(rs.getString("introduction"));
                cv.setExperience(rs.getInt("experience"));

                // Giả định các phương thức lấy danh sách skills, education, và details sẽ được cài đặt
                cv.setCvSkillList(cvSkillDAO.getCvSkillsByCvId(cv.getCvId()));
                cv.setEduList(educationDAO.getEducationsByCvId(cv.getCvId()));
                cv.setCvDetailList(cvDetailDAO.getAllByCvId(cv.getCvId()));
                list.add(cv);
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi lấy danh sách CV: {0}", e.getMessage());
        }
        return list;
    }

    public int getTotalCvMentor() {
        String query = """
                    SELECT count(*) FROM CV cv
                    join User_Role r
                    on cv.user_id = r.user_id
                    where r.role_id = 2""";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                int total = rs.getInt(1);
                int countPage = total / 4;
                if (total % 4 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
        return 0;
    }

    public List<CV> getAllCvMentor() {
        List<CV> list = new ArrayList<>();
        String query = """
                       SELECT * FROM CV cv
                       join User_Role r
                       on cv.user_id = r.user_id
                       where r.role_id = 2
                        """;
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                CV cv = new CV();
                cv.setCvId(rs.getInt("cv_id"));
                cv.setApplicant(mentorDAO.getById(rs.getInt("user_id")));
                cv.setIntroduction(rs.getString("introduction"));
                cv.setExperience(rs.getInt("experience"));

                // Giả định các phương thức lấy danh sách skills, education, và details sẽ được cài đặt
                cv.setCvSkillList(cvSkillDAO.getCvSkillsByCvId(cv.getCvId()));
                cv.setEduList(educationDAO.getEducationsByCvId(cv.getCvId()));
                cv.setCvDetailList(cvDetailDAO.getAllByCvId(cv.getCvId()));
                list.add(cv);
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi lấy danh sách CV: {0}", e.getMessage());
        }
        return list;
    }
    
    public List<CV> getAllCvMentor(String name, int page) {
        List<CV> list = new ArrayList<>();
        String query = """
                       SELECT * FROM CV cv
                       join User_Role r
                       on cv.user_id = r.user_id
                       where r.role_id = 2
                       ORDER BY cv.cv_id
                       OFFSET ? ROWS 
                       FETCH FIRST 4 ROWS ONLY
                        """;
        if (name != null) {
            query += "";
        }
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, (page - 1) * 4);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                CV cv = new CV();
                cv.setCvId(rs.getInt("cv_id"));
                cv.setApplicant(mentorDAO.getById(rs.getInt("user_id")));
                cv.setIntroduction(rs.getString("introduction"));
                cv.setExperience(rs.getInt("experience"));

                // Giả định các phương thức lấy danh sách skills, education, và details sẽ được cài đặt
                cv.setCvSkillList(cvSkillDAO.getCvSkillsByCvId(cv.getCvId()));
                cv.setEduList(educationDAO.getEducationsByCvId(cv.getCvId()));
                cv.setCvDetailList(cvDetailDAO.getAllByCvId(cv.getCvId()));
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
                    cv.setApplicant(mentorDAO.getById(rs.getInt("user_id")));
                    cv.setIntroduction(rs.getString("introduction"));
                    cv.setExperience(rs.getInt("experience"));

                    // Giả định các phương thức lấy danh sách skills, education, và details sẽ được cài đặt
                    cv.setCvSkillList(cvSkillDAO.getCvSkillsByCvId(cv.getCvId()));
                    cv.setEduList(educationDAO.getEducationsByCvId(cv.getCvId()));
                    cv.setCvDetailList(cvDetailDAO.getAllByCvId(cv.getCvId()));
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
                    cv.setApplicant(mentorDAO.getById(rs.getInt("user_id")));
                    cv.setIntroduction(rs.getString("introduction"));
                    cv.setExperience(rs.getInt("experience"));
                    // Giả định các phương thức lấy danh sách skills, education, và details sẽ được cài đặt
                    cv.setCvSkillList(cvSkillDAO.getCvSkillsByCvId(cv.getCvId()));
                    cv.setEduList(educationDAO.getEducationsByCvId(cv.getCvId()));
                    cv.setCvDetailList(cvDetailDAO.getAllByCvId(cv.getCvId()));
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
        String query = "INSERT INTO CV (user_id) VALUES (?)";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cv.getApplicant().getUserId());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi thêm CV: {0}", e.getMessage());
        }
        return false;
    }

    // Cập nhật CV
    public boolean updateCV(CV cv) {
        String query = "UPDATE CV SET introduction = ? WHERE cv_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setString(1, cv.getIntroduction());
            stm.setInt(2, cv.getCvId());
            int rowsAffected = stm.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi cập nhật CV: {0}", e.getMessage());
        }
        return false;
    }
    
     public boolean createCVWithSkills(CV cv, List<Integer> chosenSkills) {
        String query = "INSERT INTO CV (user_id, introduction, experience) VALUES (?, ?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, cv.getApplicant().getUserId());
            stm.setString(2, cv.getIntroduction());
            stm.setInt(3, cv.getExperience());
            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                if (chosenSkills != null) {
                    cv = getCvByUserId(cv.getApplicant().getUserId());
                    for (int skillId : chosenSkills) {
                        CvSkill cvSkill = new CvSkill();
                        cvSkill.setCv(cv);
                        Skill skill = new Skill();
                        skill.setSkillId(skillId);
                        cvSkill.setSkill(skill);

                        cvSkillDAO.addCvSkill(cvSkill);
                    }
                }
                return true;
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi thêm CV: {0}", e.getMessage());
        }
        return false;
     }

    public static void main(String[] args) {
        CVDAO cvdao = new CVDAO();
        CV cv = cvdao.getCvByUserId(1);
        System.out.println(cv.getApplicant().getName());
        List<Education> feedbacks = cv.getEduList();
        for (Education feedback : feedbacks) {
            System.out.println(feedback.getSchoolName());
        }

    }
}

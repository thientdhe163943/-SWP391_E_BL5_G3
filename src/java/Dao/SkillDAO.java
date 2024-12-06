/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.Skill;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Hayashi
 */
public class SkillDAO {
    
    private final DBConnect db = new DBConnect();
    
    public ArrayList<Skill> getAllSkills() {
        ArrayList<Skill> skillList = null;
        String sql = "SELECT * from Skill";
        String sql2 = "SELECT * from Skill_Request";
        
        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                if (skillList == null) skillList = new ArrayList<>();
                
                Skill skill = new Skill();
                skill.setSkillId(rs.getInt("skill_id"));
                skill.setSkillName(rs.getString("skill_name"));
                skill.setCvSkillList(null);
                skill.setRequestList(null);
                
                skillList.add(skill);
            }
            
            rs.close();
            ps.close();            
            connection.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return skillList;
    }
    
    public void addSkill(Skill skill) {
        String sql = "INSERT INTO Skill values(?)";
        
        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, skill.getSkillName());
            ps.executeUpdate();
            
            ps.close();
            connection.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void updateSkill(Skill skill) {
        String sql = "UPDATE Skill SET skill_name = ?";
        
        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, skill.getSkillName());
            ps.executeUpdate();
            
            ps.close();
            connection.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public Skill getSkillById(int id) {
        String sql = "SELECT * from Skill WHERE skill_id = ?";
        
        try {
            Connection connection = db.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Skill skill = new Skill();
                skill.setSkillId(id);
                skill.setSkillName(rs.getString("skill_name"));
                
                return skill;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return null;
    }
}

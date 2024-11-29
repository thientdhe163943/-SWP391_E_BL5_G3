/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Hayashi
 */
public class CV {
    private int cvId;
    private int userId;
    private String introduction;
    private Integer experience;
    
    private ArrayList<Skill> cvSkillList;

    public CV() {
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public CV(int userId, String introduction, Integer experience, ArrayList<Skill> cvSkillList) {
        this.userId = userId;
        this.introduction = introduction;
        this.experience = experience;
        this.cvSkillList = cvSkillList;
    }

    public int getCvId() {
        return cvId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public ArrayList<Skill> getCvSkillList() {
        return cvSkillList;
    }

    public void setCvSkillList(ArrayList<Skill> cvSkillList) {
        this.cvSkillList = cvSkillList;
    }
}

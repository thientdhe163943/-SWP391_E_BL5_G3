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
public class Skill {
    private int skillId;
    private String skillName;
    
    private ArrayList<CV> cvSkillList;
    private ArrayList<Request> requestList;

    public Skill() {
    }

    public Skill(String skillName, ArrayList<CV> cvSkillList) {
        this.skillName = skillName;
        this.cvSkillList = cvSkillList;
    }

    public ArrayList<Request> getRequestList() {
        return requestList;
    }

    public void setRequestList(ArrayList<Request> requestList) {
        this.requestList = requestList;
    }

    public void setSkillId(int skillId) {
        this.skillId = skillId;
    }

    public int getSkillId() {
        return skillId;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public ArrayList<CV> getCvSkillList() {
        return cvSkillList;
    }

    public void setCvSkillList(ArrayList<CV> cvSkillList) {
        this.cvSkillList = cvSkillList;
    }
}

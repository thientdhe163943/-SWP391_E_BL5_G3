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
    private int cv_id;
    private int user_id;
    private String introduction;
    private Integer experience;
    
    private ArrayList<Skill> cv_skill;

    public CV() {
    }

    public CV(int user_id, String introduction, Integer experience, ArrayList<Skill> cv_skill) {
        this.user_id = user_id;
        this.introduction = introduction;
        this.experience = experience;
        this.cv_skill = cv_skill;
    }

    public ArrayList<Skill> getCv_skill() {
        return cv_skill;
    }

    public void setCv_skill(ArrayList<Skill> cv_skill) {
        this.cv_skill = cv_skill;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
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

    public int getCv_id() {
        return cv_id;
    }
    
}

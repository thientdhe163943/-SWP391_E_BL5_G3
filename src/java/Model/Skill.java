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
    private int skill_id;
    private String skill_name;
    
    private ArrayList<CV> cv_skill;

    public Skill() {
    }

    public Skill(String skill_name, ArrayList<CV> cv_skill) {
        this.skill_name = skill_name;
        this.cv_skill = cv_skill;
    }

    public String getSkill_name() {
        return skill_name;
    }

    public void setSkill_name(String skill_name) {
        this.skill_name = skill_name;
    }

    public ArrayList<CV> getCv_skill() {
        return cv_skill;
    }

    public void setCv_skill(ArrayList<CV> cv_skill) {
        this.cv_skill = cv_skill;
    }

    public int getSkill_id() {
        return skill_id;
    }
    
}

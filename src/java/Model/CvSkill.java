/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class CvSkill {
    private int cvSkillId;
    private Skill skill;
    private CV cv;
    

    public CvSkill() {
    }

    public CvSkill(int cvSkillId, Skill skill, CV cv) {
        this.cvSkillId = cvSkillId;
        this.skill = skill;
        this.cv = cv;
    }

    public int getCvSkillId() {
        return cvSkillId;
    }

    public void setCvSkillId(int cvSkillId) {
        this.cvSkillId = cvSkillId;
    }

    public Skill getSkill() {
        return skill;
    }

    public void setSkill(Skill skill) {
        this.skill = skill;
    }

    public CV getCv() {
        return cv;
    }

    public void setCv(CV cv) {
        this.cv = cv;
    }

    
}

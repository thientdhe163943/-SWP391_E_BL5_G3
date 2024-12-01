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
    private int cvId;
    private int skillId;

    public CvSkill() {
    }

    public CvSkill(int cvSkillId, int cvId, int skillId) {
        this.cvSkillId = cvSkillId;
        this.cvId = cvId;
        this.skillId = skillId;
    }

    public int getCvSkillId() {
        return cvSkillId;
    }

    public void setCvSkillId(int cvSkillId) {
        this.cvSkillId = cvSkillId;
    }

    public int getCvId() {
        return cvId;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public int getSkillId() {
        return skillId;
    }

    public void setSkillId(int skillId) {
        this.skillId = skillId;
    }
    
    
}

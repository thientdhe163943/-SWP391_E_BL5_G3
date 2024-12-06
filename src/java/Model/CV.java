/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hayashi
 */
public class CV {

    private int cvId;
    private User applicant;
    private String introduction;
    private Integer experience;

    private List<CvSkill> cvSkillList;
    private List<Education> eduList;
    private List<CvDetail> cvDetailList;

    public CV() {
    }

    public CV(int cvId, User applicant, String introduction, Integer experience, List<CvSkill> cvSkillList, List<Education> eduList, List<CvDetail> cvDetailList) {
        this.cvId = cvId;
        this.applicant = applicant;
        this.introduction = introduction;
        this.experience = experience;
        this.cvSkillList = cvSkillList;
        this.eduList = eduList;
        this.cvDetailList = cvDetailList;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public int getCvId() {
        return cvId;
    }

    public User getApplicant() {
        return applicant;
    }

    public void setApplicant(User applicant) {
        this.applicant = applicant;
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

    public List<CvSkill> getCvSkillList() {
        return cvSkillList;
    }

    public void setCvSkillList(List<CvSkill> cvSkillList) {
        this.cvSkillList = cvSkillList;
    }

    public List<Education> getEduList() {
        return eduList;
    }

    public void setEduList(List<Education> eduList) {
        this.eduList = eduList;
    }

    public List<CvDetail> getCvDetailList() {
        return cvDetailList;
    }

    public void setCvDetailList(List<CvDetail> cvDetailList) {
        this.cvDetailList = cvDetailList;
    }

}

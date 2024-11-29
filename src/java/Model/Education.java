/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hayashi
 */
public class Education {
    private int eduId;
    private int cvId;
    private String university;

    public Education() {
    }

    public Education(int cvId, String university) {
        this.cvId = cvId;
        this.university = university;
    }

    public void setEduId(int eduId) {
        this.eduId = eduId;
    }

    public int getEduId() {
        return eduId;
    }

    public int getCvId() {
        return cvId;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import java.util.List;

/**
 *
 * @author Hayashi
 */
public class Request {

    private int requestId;
    private String title;
    private Date deadline;
    private String content;
    private User mentor;
    private User mentee;
    private int status;
    
    private List<Skill> skillList;

    public Request() {
    }

    public Request(int requestId, String title, Date deadline, String content, User mentor, User mentee, int status) {
        this.requestId = requestId;
        this.title = title;
        this.deadline = deadline;
        this.content = content;
        this.mentor = mentor;
        this.mentee = mentee;
        this.status = status;
    }

    public List<Skill> getSkillList() {
        return skillList;
    }

    public void setSkillList(List<Skill> skillList) {
        this.skillList = skillList;
    }

    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getMentor() {
        return mentor;
    }

    public void setMentor(User mentor) {
        this.mentor = mentor;
    }

    public User getMentee() {
        return mentee;
    }

    public void setMentee(User mentee) {
        this.mentee = mentee;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
}

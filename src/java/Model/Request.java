/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author Hayashi
 */
public class Request {
    private int request_id;
    private String title;
    private Date deadline;
    private String content;
    private int mentor_id;
    private int mentee_id;
    private boolean status;

    public Request() {
    }

    public Request(String title, Date deadline, String content, int mentor_id, int mentee_id, boolean status) {
        this.title = title;
        this.deadline = deadline;
        this.content = content;
        this.mentor_id = mentor_id;
        this.mentee_id = mentee_id;
        this.status = status;
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

    public int getMentor_id() {
        return mentor_id;
    }

    public void setMentor_id(int mentor_id) {
        this.mentor_id = mentor_id;
    }

    public int getMentee_id() {
        return mentee_id;
    }

    public void setMentee_id(int mentee_id) {
        this.mentee_id = mentee_id;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getRequest_id() {
        return request_id;
    }
    
}

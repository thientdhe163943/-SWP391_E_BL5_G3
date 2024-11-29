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
    private int requestId;
    private String title;
    private Date deadline;
    private String content;
    private int mentorId;
    private int menteeId;
    private boolean status;

    public Request() {
    }

    public Request(String title, Date deadline, String content, int mentorId, int menteeId, boolean status) {
        this.title = title;
        this.deadline = deadline;
        this.content = content;
        this.mentorId = mentorId;
        this.menteeId = menteeId;
        this.status = status;
    }

    public int getRequestId() {
        return requestId;
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

    public int getMentorId() {
        return mentorId;
    }

    public void setMentorId(int mentorId) {
        this.mentorId = mentorId;
    }

    public int getMenteeId() {
        return menteeId;
    }

    public void setMenteeId(int menteeId) {
        this.menteeId = menteeId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}

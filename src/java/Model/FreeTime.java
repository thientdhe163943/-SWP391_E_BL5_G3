/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Time;
import java.sql.Date;

/**
 *
 * @author Hayashi
 */
public class FreeTime {
    private int timeId;
    private int userId;
    private Time startTime;
    private Time endtime;
    private Date date;
    private Boolean status;

    public FreeTime() {
    }

    public FreeTime(int userId, Time startTime, Time endtime, Date date, Boolean status) {
        this.userId = userId;
        this.startTime = startTime;
        this.endtime = endtime;
        this.date = date;
        this.status = status;
    }

    public void setTimeId(int timeId) {
        this.timeId = timeId;
    }

    public int getTimeId() {
        return timeId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Time getStartTime() {
        return startTime;
    }

    public void setStartTime(Time startTime) {
        this.startTime = startTime;
    }

    public Time getEndtime() {
        return endtime;
    }

    public void setEndtime(Time endtime) {
        this.endtime = endtime;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
}

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
    private int time_id;
    private int user_id;
    private Time start_time;
    private Time end_time;
    private Date date;
    private Boolean status;

    public FreeTime() {
    }

    public FreeTime(int user_id, Time start_time, Time end_time, Date date, Boolean status) {
        this.user_id = user_id;
        this.start_time = start_time;
        this.end_time = end_time;
        this.date = date;
        this.status = status;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Time getStart_time() {
        return start_time;
    }

    public void setStart_time(Time start_time) {
        this.start_time = start_time;
    }

    public Time getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Time end_time) {
        this.end_time = end_time;
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

    public int getTime_id() {
        return time_id;
    }
    
}

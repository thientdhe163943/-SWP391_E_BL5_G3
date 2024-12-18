/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.time.LocalDate;
import java.time.LocalTime;

/**
 *
 * @author Hayashi
 */
public class FreeTime {

    private int timeId;
    private User user;
    private LocalTime startTime;
    private LocalTime endtime;
    private LocalDate date;
    private Boolean status;

    public FreeTime() {
    }

    public FreeTime(int timeId, User user, LocalTime startTime, LocalTime endtime, LocalDate date, Boolean status) {
        this.timeId = timeId;
        this.user = user;
        this.startTime = startTime;
        this.endtime = endtime;
        this.date = date;
        this.status = status;
    }

    public int getTimeId() {
        return timeId;
    }

    public void setTimeId(int timeId) {
        this.timeId = timeId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public LocalTime getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalTime startTime) {
        this.startTime = startTime;
    }

    public LocalTime getEndtime() {
        return endtime;
    }

    public void setEndtime(LocalTime endtime) {
        this.endtime = endtime;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
}

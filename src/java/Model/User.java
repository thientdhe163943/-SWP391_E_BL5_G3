/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.sql.Date;

/**
 *
 * @author Hayashi
 */
public class User {
    private int userId;
    private String name;
    private Boolean gender;
    private Date DOB;
    private String phone;
    private String address;
    private String gmail;
    private String avatar;
    private Integer accountId;
    private Boolean status;
    
    private ArrayList<Request> requestList;
    private ArrayList<FreeTime> timeList;
    private ArrayList<CommentBlog> commentList;

    public User() {
    }

    public User(String name, Boolean gender, Date DOB, String phone, String address, String gmail, String avatar, Integer accountId, Boolean status, ArrayList<Request> requestList, ArrayList<FreeTime> timeList, ArrayList<CommentBlog> commentList) {
        this.name = name;
        this.gender = gender;
        this.DOB = DOB;
        this.phone = phone;
        this.address = address;
        this.gmail = gmail;
        this.avatar = avatar;
        this.accountId = accountId;
        this.status = status;
        this.requestList = requestList;
        this.timeList = timeList;
        this.commentList = commentList;
    }

    public ArrayList<CommentBlog> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<CommentBlog> commentList) {
        this.commentList = commentList;
    }

    public ArrayList<Request> getRequestList() {
        return requestList;
    }

    public void setRequestList(ArrayList<Request> requestList) {
        this.requestList = requestList;
    }

    public ArrayList<FreeTime> getTimeList() {
        return timeList;
    }

    public void setTimeList(ArrayList<FreeTime> timeList) {
        this.timeList = timeList;
    }

    public int getUserId() {
        return userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
    
    
}

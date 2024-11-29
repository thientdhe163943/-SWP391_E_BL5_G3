/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Hayashi
 */
public class Blog {
    private int blog_id;
    private int user_id;
    private String image;
    private String content;
    private Integer view;
    private Boolean status;
    private ArrayList<Comment_Blog> commentList;

    public Blog() {
    }

    public Blog(int user_id, String image, String content, Integer view, Boolean status, ArrayList<Comment_Blog> commentList) {
        this.user_id = user_id;
        this.image = image;
        this.content = content;
        this.view = view;
        this.status = status;
        this.commentList = commentList;
    }

    public ArrayList<Comment_Blog> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<Comment_Blog> commentList) {
        this.commentList = commentList;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getView() {
        return view;
    }

    public void setView(Integer view) {
        this.view = view;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public int getBlog_id() {
        return blog_id;
    }
    
}

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
    private int blogId;
    private int userId;
    private String image;
    private String content;
    private Integer view;
    private Boolean status;
    private ArrayList<CommentBlog> commentList;

    public Blog() {
    }

    public Blog(int userId, String image, String content, Integer view, Boolean status, ArrayList<CommentBlog> commentList) {
        this.userId = userId;
        this.image = image;
        this.content = content;
        this.view = view;
        this.status = status;
        this.commentList = commentList;
    }

    public int getBlogId() {
        return blogId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public ArrayList<CommentBlog> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<CommentBlog> commentList) {
        this.commentList = commentList;
    }
}

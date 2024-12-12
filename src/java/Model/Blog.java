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
    private String full_content;
    private ArrayList<CommentBlog> commentList;

    public Blog() {
    }

    public Blog(int userId, String image, String content, String full_content) {
        this.userId = userId;
        this.image = image;
        this.content = content;
        this.full_content = full_content;
    }

    public Blog(String image, String content, String full_content) {
        this.image = image;
        this.content = content;
        this.full_content = full_content;
    }

    public String getFull_content() {
        return full_content;
    }

    public void setFull_content(String full_content) {
        this.full_content = full_content;
    }

    public Blog(int blogId, int userId, String image, String content, String full_content) {
        this.blogId = blogId;
        this.userId = userId;
        this.image = image;
        this.content = content;
        this.full_content = full_content;
    }

    public Blog(int blogId, int userId, String image, String content) {
        this.blogId = blogId;
        this.userId = userId;
        this.image = image;
        this.content = content;
    }

  

    public Blog(int blogId, String image, String content) {
        this.blogId = blogId;
        this.image = image;
        this.content = content;
    }

   

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
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

    @Override
    public String toString() {
        return "Blog{" + "blogId=" + blogId + ", userId=" + userId + ", image=" + image + ", content=" + content + ", view=" + view + '}';
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hayashi
 */
public class Comment_Blog {
    private int cm_id;
    private int blog_id;
    private String comment;
    private int user_id;

    public Comment_Blog() {
    }

    public Comment_Blog(int blog_id, String comment, int user_id) {
        this.blog_id = blog_id;
        this.comment = comment;
        this.user_id = user_id;
    }

    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCm_id() {
        return cm_id;
    }
    
}

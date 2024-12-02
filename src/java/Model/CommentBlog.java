/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hayashi
 */
public class CommentBlog {
    private int cmId;
    private int blogId;
    private String comment;
    private int userId;

    public CommentBlog() {
    }

    public CommentBlog(int blogId, String comment, int userId) {
        this.blogId = blogId;
        this.comment = comment;
        this.userId = userId;
    }

    public void setCmId(int cmId) {
        this.cmId = cmId;
    }

    public int getCmId() {
        return cmId;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}

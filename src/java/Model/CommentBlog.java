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
    private Blog blog;
    private String comment;
    private User commenter;

    public CommentBlog() {
    }

    public CommentBlog(int cmId, Blog blog, String comment, User commenter) {
        this.cmId = cmId;
        this.blog = blog;
        this.comment = comment;
        this.commenter = commenter;
    }

    public int getCmId() {
        return cmId;
    }

    public void setCmId(int cmId) {
        this.cmId = cmId;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public User getCommenter() {
        return commenter;
    }

    public void setCommenter(User commenter) {
        this.commenter = commenter;
    }
}

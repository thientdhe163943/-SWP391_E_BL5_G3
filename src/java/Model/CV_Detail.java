/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hayashi
 */
public class CV_Detail {
    private int cv_detail_id;
    private int cv_id;
    private String comment;
    private Float rating;

    public CV_Detail(int cv_id, String comment, Float rating) {
        this.cv_id = cv_id;
        this.comment = comment;
        this.rating = rating;
    }

    public CV_Detail() {
    }

    public int getCv_id() {
        return cv_id;
    }

    public void setCv_id(int cv_id) {
        this.cv_id = cv_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Float getRating() {
        return rating;
    }

    public void setRating(Float rating) {
        this.rating = rating;
    }

    public int getCv_detail_id() {
        return cv_detail_id;
    }
    
}

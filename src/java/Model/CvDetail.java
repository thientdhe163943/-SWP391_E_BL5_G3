/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Hayashi
 */
public class CvDetail {
    private int cvDetailId;
    private CV cv;
    private String comment;
    private Float rating;

    public CvDetail() {
    }

    public CvDetail(int cvDetailId, CV cv, String comment, Float rating) {
        this.cvDetailId = cvDetailId;
        this.cv = cv;
        this.comment = comment;
        this.rating = rating;
    }

    public int getCvDetailId() {
        return cvDetailId;
    }

    public void setCvDetailId(int cvDetailId) {
        this.cvDetailId = cvDetailId;
    }

    public CV getCv() {
        return cv;
    }

    public void setCv(CV cv) {
        this.cv = cv;
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
}

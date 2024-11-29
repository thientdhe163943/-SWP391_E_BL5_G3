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
    private int cvId;
    private String comment;
    private Float rating;

    public CvDetail() {
    }

    public CvDetail(int cvId, String comment, Float rating) {
        this.cvId = cvId;
        this.comment = comment;
        this.rating = rating;
    }

    public int getCvDetailId() {
        return cvDetailId;
    }

    public int getCvId() {
        return cvId;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
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

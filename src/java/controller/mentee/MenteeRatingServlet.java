/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.mentee;

import Dao.CvDetailDAO;
import Model.CV;
import Model.CvDetail;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;

/**
 *
 * @author Hayashi
 */
public class MenteeRatingServlet extends HttpServlet {
    
    private final CvDetailDAO dao = new CvDetailDAO();

    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        var session = request.getSession();
        if (session == null || session.getAttribute("user") == null) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
        } else {
            String ratingString = request.getParameter("rating");
            String feedback = request.getParameter("feedback-text");
            String cvIdString = request.getParameter("cvId");
            float rating = Float.parseFloat(ratingString);
            int cvId = Integer.parseInt(cvIdString);
            CV cv = new CV();
            cv.setCvId(cvId);
            User currentUser = (User)session.getAttribute("user");
            
            CvDetail cvDetail = new CvDetail();
            cvDetail.setCv(cv);
            cvDetail.setMentee(currentUser);
            cvDetail.setComment(feedback);
            cvDetail.setRating(rating);
            
            boolean updateStatus = dao.createCVDetail(cvDetail);
            
            response.sendRedirect("viewCV");
        }
    }

}

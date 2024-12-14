/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.mentee;

import Dao.RequestDAO;
import Model.Request;
import Model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Hayashi
 */
public class MenteeRequestStatistics extends HttpServlet {

    private final RequestDAO requestDao = new RequestDAO();
    
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
        var session = request.getSession();
        
        if (session == null) {
            session.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
        } else {
            var user = (User)request.getSession().getAttribute("user");
        ArrayList<Request> requestList = requestDao.getAllVisibleRequestsWithMenteeId(null, user.getUserId());
        int totalMentors = 0;
        int totalRequests = requestList.size();
        int pendingRequests = 0;
        int processingRequests = 0;
        int canceledRequests = 0;
        int closedRequests = 0;
        
        for (Request r : requestList) {
            if (r.getMentor() != null) totalMentors++;
            
            if (r.getStatus() == 1) pendingRequests++;
            else if (r.getStatus() == 2) processingRequests++;
            else if (r.getStatus() == 3) canceledRequests++;
            else if (r.getStatus() == 4) closedRequests++;
        }
        
        request.setAttribute("totalMentors", totalMentors);
        request.setAttribute("totalRequests", totalRequests);
        request.setAttribute("pendingRequests", pendingRequests);
        request.setAttribute("processingRequests", processingRequests);
        request.setAttribute("canceledRequests", canceledRequests);
        request.setAttribute("closedRequests", closedRequests);
        
        request.getRequestDispatcher("./view/mentee/request-statistics.jsp").forward(request, response);
        }
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
    }

}

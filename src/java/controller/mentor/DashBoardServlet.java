/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.MentorDAO;
import Model.Request;
import Model.User;
import Model.User_role;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "DashBoardServlet", urlPatterns = {"/mentor-dashboard"})
public class DashBoardServlet extends HttpServlet {

    private final MentorDAO mentorDAO = new MentorDAO();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        User_role role = (User_role) session.getAttribute("userRole");
        if (user == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        if (role.getRole_id() != 2) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
            return;
        }

        User mentor = mentorDAO.getById(user.getUserId());
        List<User> menteeList = mentorDAO.getMenteesById(mentor.getUserId());
        int totalMentees = menteeList.size();
        //Get List
        List<Request> pendingRequests = mentorDAO.getStatusRequests(mentor.getUserId(), 1);
        List<Request> acceptedRequests = mentorDAO.getStatusRequests(mentor.getUserId(), 2);
        List<Request> canceledRequests = mentorDAO.getStatusRequests(mentor.getUserId(), 3);
        List<Request> closedRequests = mentorDAO.getStatusRequests(mentor.getUserId(), 4);
        //Set list
        request.setAttribute("pendingRequests", pendingRequests);
        request.setAttribute("acceptedRequests", acceptedRequests);
        request.setAttribute("canceledRequests", canceledRequests);
        request.setAttribute("closedRequests", closedRequests);

        //Total Requests
        int totalRequest = pendingRequests.size() + acceptedRequests.size() + canceledRequests.size() + closedRequests.size();
        double completedRate = 0;
        double canceledRate = 0;
        if (totalRequest > 0) {
            completedRate = closedRequests.size() * 100 / totalRequest;
            canceledRate = canceledRequests.size() * 100 / totalRequest;
        }
        request.setAttribute("completedRate", completedRate);
        request.setAttribute("canceledRate", canceledRate);

        request.setAttribute("totalRequest", totalRequest);
        request.setAttribute("totalMentees", totalMentees);
        request.setAttribute("menteeList", menteeList);
        request.setAttribute("mentor", mentor);
        request.getRequestDispatcher("view/mentor/mentor-dashboard.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.MentorDAO;
import Dao.RequestDAO;
import Model.Request;
import Model.User;
import Model.User_role;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class RequestListServlet extends HttpServlet {

    private final MentorDAO mentorDAO = new MentorDAO();
    private final RequestDAO requestDAO = new RequestDAO();

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
        User mentor = (User) session.getAttribute("user");
        User_role role = (User_role) session.getAttribute("userRole");
        if (mentor == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        
        if (role.getRole_id() != 2) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
            return;
        }
        //Banner
        List<User> menteeList = mentorDAO.getMenteesById(mentor.getUserId());
        int totalMentees = menteeList.size();

        request.setAttribute("totalMentees", totalMentees);
        request.setAttribute("menteeList", menteeList);
        request.setAttribute("mentor", mentor);

        //Table List
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";
        }
        int totalPage = mentorDAO.getNumberPageRequests(mentor.getUserId());
        List<Request> requestList;
        requestList = mentorDAO.getRequestsByMentor(mentor.getUserId(), Integer.parseInt(index));
        request.setAttribute("index", index);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("requestList", requestList);
        request.getRequestDispatcher("view/mentor/mentor-request-list.jsp").forward(request, response);
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
        String requestId = request.getParameter("requestId");
        String action = request.getParameter("action");
        switch (action) {
            case "cancel":
                requestDAO.updateStatus(Integer.parseInt(requestId), 3);
                break;
            case "accept":
                requestDAO.updateStatus(Integer.parseInt(requestId), 2);
                break;
            case "finish":
                requestDAO.updateStatus(Integer.parseInt(requestId), 4);
                break;
            default:
                throw new AssertionError();
        }
        doGet(request, response);
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

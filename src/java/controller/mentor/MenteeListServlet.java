/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.MentorDAO;
import Model.User;
import Model.User_role;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "MenteeListServlet", urlPatterns = {"/mentor-mentee-list"})
public class MenteeListServlet extends HttpServlet {

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
        if(user == null){
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        
        if (role.getRole_id() != 2) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
            return;
        }
        
        User mentor = mentorDAO.getById(user.getUserId());
        String index = request.getParameter("index");
        if(index == null){
            index = "1";
        }
        List<User> menteeList = mentorDAO.getMenteesById(mentor.getUserId(), Integer.parseInt(index));
        int totalMentees = menteeList.size();
        int totalPage = mentorDAO.getNumberPageMentees(mentor.getUserId());
        
        request.setAttribute("index", index);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("totalMentees", totalMentees);
        request.setAttribute("menteeList", menteeList);
        request.setAttribute("mentor", mentor);
        request.getRequestDispatcher("view/mentor/mentor-mentee-list.jsp").forward(request, response);
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentee;

import Dao.RequestDAO;
import Dao.SkillDAO;
import Dao.UserDAO;
import Model.Request;
import Model.Skill;
import Model.User;
import Model.User_role;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Hayashi
 */
public class MenteeNewRequestServlet extends HttpServlet {

    private final RequestDAO requestDao = new RequestDAO();
    private final UserDAO userDao = new UserDAO();
    private final SkillDAO skillDao = new SkillDAO();

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

        var session = request.getSession();

        if (session == null || session.getAttribute("user") == null) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
        } else {
            User_role userRole = (User_role) session.getAttribute("userRole");
            if (userRole.getRole_id() != 1) {
                request.setAttribute("error", "Access Denied");
                request.getRequestDispatcher("./view/error.jsp").forward(request, response);
            } else {
                List<Skill> skillList = skillDao.getAllSkills();
                String mentorEmail = request.getParameter("mentor");
                request.setAttribute("skillList", skillList);
                request.setAttribute("mentorEmail", mentorEmail);
                request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
            }
        }
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
        var session = request.getSession();
        if (session == null || session.getAttribute("user") == null) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
        } else {
            var user = (User) session.getAttribute("user");
            String mentorEmail = request.getParameter("mentorEmail");

            Request newRequest = new Request();
            newRequest.setTitle(request.getParameter("title"));
            newRequest.setDeadline(Date.valueOf(request.getParameter("deadline")));
            newRequest.setContent(request.getParameter("content"));
            if (mentorEmail == null || mentorEmail.trim().isEmpty()) {
                newRequest.setMentor(null);
                newRequest.setStatus(1);
            } else {
                User mentor = userDao.getUserByEmail(mentorEmail);
                newRequest.setMentor(mentor);
                newRequest.setStatus(2);
            }
            newRequest.setMentee(user);

            String[] skills = request.getParameterValues("skill");
            ArrayList<Integer> chosenSkills = new ArrayList<>();

            if (skills != null) {
                for (String skillId : skills) {
                    chosenSkills.add(Integer.parseInt(skillId));
                }
            }

            requestDao.addRequest(newRequest, chosenSkills);

            response.sendRedirect("mentee-request-list");
        }

    }

}

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
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MenteeNewRequestServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MenteeNewRequestServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        
        List<Skill> skillList = skillDao.getAllSkills();
        
        request.setAttribute("skillList", skillList);

        request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
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
        Request newRequest = new Request();

        newRequest.setTitle(request.getParameter("title"));
        newRequest.setDeadline(Date.valueOf(request.getParameter("deadline")));
        newRequest.setContent(request.getParameter("content"));
        newRequest.setMentor(null);
        User mentee = new User();
        mentee.setUserId(1);
        newRequest.setMentee(mentee);
        newRequest.setStatus(1);

        String[] skills = request.getParameterValues("skill");
        ArrayList<Integer> chosenSkills = new ArrayList<>();

        if (skills != null) {
            for (String skillId : skills) {
                chosenSkills.add(Integer.parseInt(skillId));
            }
        }

        requestDao.addRequest(newRequest, chosenSkills);

        response.sendRedirect("mentee");
    }

}

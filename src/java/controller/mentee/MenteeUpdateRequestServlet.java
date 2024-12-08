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
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hayashi
 */
public class MenteeUpdateRequestServlet extends HttpServlet {

    private final RequestDAO requestDao = new RequestDAO();
    private final SkillDAO skillDao = new SkillDAO();
    private final UserDAO userDao = new UserDAO();

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
            out.println("<title>Servlet MenteeUpdateRequestServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MenteeUpdateRequestServlet at " + request.getContextPath() + "</h1>");
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
        int currentRequestId = Integer.parseInt(request.getParameter("requestId"));
        Request currentRequest = requestDao.getRequestById(currentRequestId);
        ArrayList<Integer> chosenSkills = requestDao.getSkillByRequestId(currentRequestId);

        request.setAttribute("skillList", skillList);
        request.setAttribute("currentRequest", currentRequest);
        request.setAttribute("chosenSkills", chosenSkills);
        
        request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
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
        int requestId = Integer.parseInt(request.getParameter("requestId"));
        String title = request.getParameter("title");
        Date deadline = Date.valueOf(request.getParameter("deadline"));
        String content = request.getParameter("content");
        
        String[] skills = request.getParameterValues("skill");
        ArrayList<Integer> chosenSkills = new ArrayList();
        if (skills != null) {
            for (String skillId : skills) {
                chosenSkills.add(Integer.parseInt(skillId));
            }
        }
        
        int status = Integer.parseInt(request.getParameter("status"));
        User mentee = userDao.getUserById(2);
        
        Request updateRequest = new Request(requestId, title, deadline, content, null, mentee, status);
        
        requestDao.updateRequest(updateRequest, chosenSkills);
        
        response.sendRedirect("mentee");
    }

}

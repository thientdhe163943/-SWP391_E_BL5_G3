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
            List<Skill> skillList = skillDao.getAllSkills();
            int currentRequestId = Integer.parseInt(request.getParameter("requestId"));
            Request currentRequest = requestDao.getRequestById(currentRequestId);
            ArrayList<Integer> chosenSkills = requestDao.getSkillByRequestId(currentRequestId);

            request.setAttribute("skillList", skillList);
            request.setAttribute("currentRequest", currentRequest);
            request.setAttribute("chosenSkills", chosenSkills);

            request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
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
            int requestId = Integer.parseInt(request.getParameter("requestId"));
            String title = request.getParameter("title").trim();
            String deadlineParam = request.getParameter("deadline");
            String content = request.getParameter("content").trim();

            // Retrieve skill list and current request details
            List<Skill> skillList = skillDao.getAllSkills();
            Request currentRequest = requestDao.getRequestById(requestId);
            ArrayList<Integer> chosenSkills = requestDao.getSkillByRequestId(requestId);

            // Validate input fields
            if (title == null || title.isEmpty()) {
                request.setAttribute("error", "Title is required.");
                request.setAttribute("skillList", skillList);
                request.setAttribute("currentRequest", currentRequest);
                request.setAttribute("chosenSkills", chosenSkills);
                request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
                return;
            }
            if (deadlineParam == null || deadlineParam.isEmpty()) {
                request.setAttribute("error", "Deadline is required.");
                request.setAttribute("skillList", skillList);
                request.setAttribute("currentRequest", currentRequest);
                request.setAttribute("chosenSkills", chosenSkills);
                request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
                return;
            }

            Date deadline;
            try {
                deadline = Date.valueOf(deadlineParam);
            } catch (IllegalArgumentException e) {
                request.setAttribute("error", "Invalid deadline format.");
                request.setAttribute("skillList", skillList);
                request.setAttribute("currentRequest", currentRequest);
                request.setAttribute("chosenSkills", chosenSkills);
                request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
                return;
            }

            if (content == null || content.isEmpty()) {
                request.setAttribute("error", "Content is required.");
                request.setAttribute("skillList", skillList);
                request.setAttribute("currentRequest", currentRequest);
                request.setAttribute("chosenSkills", chosenSkills);
                request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
                return;
            }

            String[] skills = request.getParameterValues("skill");
            chosenSkills = new ArrayList<>();
            if (skills == null || skills.length == 0) {
                request.setAttribute("error", "At least one skill must be selected.");
                request.setAttribute("skillList", skillList);
                request.setAttribute("currentRequest", currentRequest);
                request.setAttribute("chosenSkills", chosenSkills);
                request.getRequestDispatcher("./view/mentee/update-request.jsp").forward(request, response);
                return;
            }
            for (String skillId : skills) {
                chosenSkills.add(Integer.parseInt(skillId));
            }

            Request updateRequest = new Request(requestId, title, deadline, content, null, null, 0);

            requestDao.updateRequest(updateRequest, chosenSkills);

            response.sendRedirect("mentee-request-list");
        }
    }
}

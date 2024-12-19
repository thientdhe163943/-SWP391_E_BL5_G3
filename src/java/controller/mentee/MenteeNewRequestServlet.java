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

public class MenteeNewRequestServlet extends HttpServlet {

    private final RequestDAO requestDao = new RequestDAO();
    private final UserDAO userDao = new UserDAO();
    private final SkillDAO skillDao = new SkillDAO();

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
                request.setAttribute("mentor", mentorEmail);
                request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        var session = request.getSession();
        if (session == null || session.getAttribute("user") == null) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
            return;
        }

        var user = (User) session.getAttribute("user");
        String mentorEmail = request.getParameter("mentor") == null ? "" : request.getParameter("mentor").trim();
        String title = request.getParameter("title") == null ? "" : request.getParameter("title").trim();
        String deadlineStr = request.getParameter("deadline") == null ? "" : request.getParameter("deadline").trim();
        String content = request.getParameter("content") == null ? "" : request.getParameter("content").trim();
        
        if (mentorEmail.isEmpty() || title.isEmpty() || deadlineStr.isEmpty() || content.isEmpty()) {
            List<Skill> skillList = skillDao.getAllSkills();
            request.setAttribute("skillList", skillList);
            request.setAttribute("mentor", mentorEmail);
            request.setAttribute("error", "All fields are required.");
            request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
            return;
        }

        Date deadline;
        try {
            deadline = Date.valueOf(deadlineStr);
        } catch (IllegalArgumentException e) {
            List<Skill> skillList = skillDao.getAllSkills();
            request.setAttribute("skillList", skillList);
            request.setAttribute("mentor", mentorEmail);
            request.setAttribute("error", "Invalid date format.");
            request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
            return;
        }

        Request newRequest = new Request();
        newRequest.setTitle(title);
        newRequest.setDeadline(deadline);
        newRequest.setContent(content);

        User mentor = userDao.getUserByEmail(mentorEmail);
        if (mentor == null) {
            List<Skill> skillList = skillDao.getAllSkills();
            request.setAttribute("skillList", skillList);
            request.setAttribute("mentor", mentorEmail);
            request.setAttribute("error", "Mentor not found.");
            request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
            return;
        }

        newRequest.setMentor(mentor);
        newRequest.setStatus(1);
        newRequest.setMentee(user);

        String[] skills = request.getParameterValues("skill");
        ArrayList<Integer> chosenSkills = new ArrayList<>();
        
        if (skills == null || skills.length == 0) {
            List<Skill> skillList = skillDao.getAllSkills();
            request.setAttribute("skillList", skillList);
            request.setAttribute("mentor", mentorEmail);
            request.setAttribute("error", "You must select at least one skill.");
            request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
            return;
        }
        
        for (String skillId : skills) {
            try {
                chosenSkills.add(Integer.parseInt(skillId));
            } catch (NumberFormatException e) {
                request.setAttribute("error", "Invalid skill ID.");
                request.getRequestDispatcher("./view/mentee/new-request.jsp").forward(request, response);
                return;
            }
        }

        requestDao.addRequest(newRequest, chosenSkills);
        response.sendRedirect("mentee-request-list");
    }
}
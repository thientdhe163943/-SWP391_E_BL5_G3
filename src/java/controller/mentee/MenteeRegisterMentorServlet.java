package controller.mentee;

import Dao.CVDAO;
import Dao.SkillDAO;
import Model.CV;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MenteeRegisterMentorServlet", urlPatterns = {"/register-mentor"})
public class MenteeRegisterMentorServlet extends HttpServlet {

    private final SkillDAO skillDao = new SkillDAO();
    private final CVDAO cvDao = new CVDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        var session = request.getSession();
        if (session.getAttribute("user") == null) {
            request.setAttribute("error", "Access denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
            return;
        }
        request.setAttribute("skillList", skillDao.getAllSkills());

        request.getRequestDispatcher("./view/mentee/register-mentor.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        var session = request.getSession();
        if (session.getAttribute("user") == null) {
            request.setAttribute("error", "Access denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
        }
        User user = (User) session.getAttribute("user");
        String introduction = request.getParameter("introduction");
        int experience = Integer.parseInt(request.getParameter("experience"));
        CV cv = new CV();
        cv.setApplicant(user);
        cv.setIntroduction(introduction);
        cv.setExperience(experience);
        if (experience > 0) {
            var chosenSkills = request.getParameterValues("skill");
            List<Integer> skillIds = new ArrayList<>();
            for (String skillId : chosenSkills) {
                skillIds.add(Integer.parseInt(skillId));
            }
            cvDao.createCVWithSkills(cv, skillIds);
        } else {
            cvDao.createCVWithSkills(cv, null);
        }

        response.sendRedirect("home");
    }
}

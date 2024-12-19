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
        String experienceStr = request.getParameter("experience");
        String[] chosenSkills = request.getParameterValues("skill");
        
        boolean hasError = false;
        
        // Validate fields
        if (introduction == null || introduction.trim().isEmpty()) {
            request.setAttribute("introductionError", "Introduction cannot be empty.");
            hasError = true;
        }
        
        int experience = 0;
        try {
            experience = Integer.parseInt(experienceStr);
            if (experience < 0) {
                request.setAttribute("experienceError", "Experience must be a positive number.");
                hasError = true;
            }
        } catch (NumberFormatException e) {
            request.setAttribute("experienceError", "Invalid experience value.");
            hasError = true;
        }
        
        if (experience > 0 && (chosenSkills == null || chosenSkills.length == 0)) {
            request.setAttribute("skillsError", "At least one skill must be selected.");
            hasError = true;
        }
        
        // If there are errors, forward the user back to the form
        if (hasError) {
            StringBuilder errorMessage = new StringBuilder();
            if (request.getAttribute("introductionError") != null) {
                errorMessage.append(request.getAttribute("introductionError")).append(" ");
            }
            if (request.getAttribute("experienceError") != null) {
                errorMessage.append(request.getAttribute("experienceError")).append(" ");
            }
            if (request.getAttribute("skillsError") != null) {
                errorMessage.append(request.getAttribute("skillsError")).append(" ");
            }
            request.setAttribute("errorMessage", errorMessage.toString().trim());
            request.setAttribute("skillList", skillDao.getAllSkills());
            request.getRequestDispatcher("./view/mentee/register-mentor.jsp").forward(request, response);
            return;
        }
        
        // Create CV after validation
        CV cv = new CV();
        cv.setApplicant(user);
        cv.setIntroduction(introduction);
        cv.setExperience(experience);
        
        if (experience > 0) {
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

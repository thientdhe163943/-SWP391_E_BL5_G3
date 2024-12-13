/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.CVDAO;
import Dao.CvSkillDAO;
import Dao.EducationDAO;
import Dao.MentorDAO;
import Dao.SkillDAO;
import Model.CV;
import Model.CvDetail;
import Model.CvSkill;
import Model.Education;
import Model.Skill;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ViewCVServlet extends HttpServlet {

    private final CVDAO cvdao = new CVDAO();
    private final MentorDAO mentorDAO = new MentorDAO();
    private final EducationDAO educationDAO = new EducationDAO();
    private final SkillDAO skillDAO = new SkillDAO();
    private final CvSkillDAO cvSkillDAO = new CvSkillDAO();

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

        String mentorID = request.getParameter("mentor");
        if (mentorID == null) {
            response.sendRedirect("mentor");
            return;
        }
        if (user != null && user.getUserId() == Integer.parseInt(mentorID)) {
            request.setAttribute("check", "true");
        }

        CV cv = cvdao.getCvByUserId(Integer.parseInt(mentorID));
        //Nếu không có sẽ về index
        if (cv == null) {
            response.sendRedirect("index_1.html");
            return;
        }
        int totalMentee = mentorDAO.getMenteesById(cv.getApplicant().getUserId()).size();
        List<Skill> skills = skillDAO.getNotExistedSkills(cv.getCvId());
        double totalRate = 0;
        if (!cv.getCvDetailList().isEmpty()) {
            for (CvDetail feedback : cv.getCvDetailList()) {
                totalRate += feedback.getRating();
            }

            totalRate = totalRate / cv.getCvDetailList().size();
        }

        request.setAttribute("totalRate", totalRate);
        request.setAttribute("cv", cv);
        request.setAttribute("totalMentee", totalMentee);
        request.setAttribute("skills", skills);
        request.getRequestDispatcher("view/mentor/mentor-single.jsp").forward(request, response);
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
        String action = request.getParameter("action");
        String mentorID = request.getParameter("mentorID");
        CV cv;
        switch (action) {
            case "editIntro":
                String introduction = request.getParameter("introduction");
                cv = cvdao.getCvByUserId(Integer.parseInt(mentorID));
                cv.setIntroduction(introduction);
                if (cvdao.updateCV(cv)) {
                    response.sendRedirect("viewCV?mentor=" + mentorID);
                }
                break;
            case "addEdu":
                Education education = new Education();
                cv = cvdao.getCvByUserId(Integer.parseInt(mentorID));
                education.setCvId(cv.getCvId());
                String schoolName = request.getParameter("schoolName");
                education.setSchoolName(schoolName);
                String major = request.getParameter("major");
                education.setMajor(major);
                if (educationDAO.addEducation(education)) {
                    response.sendRedirect("viewCV?mentor=" + mentorID);
                }
                break;
            case "editEdu":
                String eduID = request.getParameter("eduID");
                Education eduEdit = new Education();
                eduEdit.setEduId(Integer.parseInt(eduID));
                String schoolNameEdit = request.getParameter("schoolName");
                eduEdit.setSchoolName(schoolNameEdit);
                String majorEdit = request.getParameter("major");
                eduEdit.setMajor(majorEdit);
                if (educationDAO.updateEducation(eduEdit)) {
                    response.sendRedirect("viewCV?mentor=" + mentorID);
                }
                break;
            case "removeEdu":
                String eduRemoveID = request.getParameter("eduID");
                if (educationDAO.deleteEducation(Integer.parseInt(eduRemoveID))) {
                    response.sendRedirect("viewCV?mentor=" + mentorID);
                }
                break;
            case "addSkill":
                String skillId = request.getParameter("skillId");
                String cvId = request.getParameter("cvID");
                CvSkill cvSkill = new CvSkill();
                cvSkill.setSkill(new Skill(Integer.parseInt(skillId), skillId));
                CV cvAddSkill = cvdao.getCvById(Integer.parseInt(cvId));
                cvSkill.setCv(cvAddSkill);
                if (cvSkillDAO.addCvSkill(cvSkill)) {
                    response.sendRedirect("viewCV?mentor=" + mentorID);
                }
                break;
            case "removeSkill":
                String cvSkillId = request.getParameter("cvSkillId");
                if (cvSkillDAO.deleteCvSkill(Integer.parseInt(cvSkillId))) {
                    response.sendRedirect("viewCV?mentor=" + mentorID);
                }
                break;
            default:
                throw new AssertionError();

        }
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

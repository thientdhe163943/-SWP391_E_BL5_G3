/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Dao.SkillDAO;
import Model.Skill;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class SkillServlet extends HttpServlet {

    private final SkillDAO skillDAO = new SkillDAO();

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
        String indexPage = request.getParameter("page");
        if (indexPage == null) {
            indexPage = "1";
        }
        try {
            int page = Integer.parseInt(indexPage);
            List<Skill> skills = skillDAO.getSkillByPage(page);
            int totalSkill = skillDAO.getAllSkills().size();
            int totalPage;
            if (totalSkill % 5 != 0) {
                totalPage = (totalSkill / 5) + 1;
            } else {
                totalPage = (totalSkill / 5);
            }
            request.setAttribute("skills", skills);
            request.setAttribute("page", page);
            request.setAttribute("totalPage", totalPage);
            request.getRequestDispatcher("view-list-skill.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendRedirect("skill?page=1");
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
        String action = request.getParameter("action");
        String skillId = request.getParameter("skillId");

        String skillName = request.getParameter("skillName");
        String skillStatus = request.getParameter("skillStatus");

        if (!action.equals("delete") && (skillName == null || skillName.trim().isEmpty())) {
            setRequestAttributes(request, "Skill Name must be more than 1 character", "error");
            doGet(request, response);
            return;
        }

        Skill existSkill;
        Skill skill = new Skill();

        switch (action) {
            case "delete":
                handleDeleteSkill(request, skillId);
                break;
            case "add":
                existSkill = skillDAO.getSkillByName(skillName.trim());
                if (existSkill != null) {
                    setRequestAttributes(request, "Skill already exists", "error");
                } else {
                    skill.setSkillName(skillName.trim());
                    boolean isAdded = skillDAO.addSkill(skill);
                    setRequestAttributes(request, isAdded ? "Add Skill Successful!" : "Add  Skill Failed!", isAdded ? "success" : "error");
                }
                break;
            case "edit":
                existSkill = skillDAO.getSkillByName(skillName.trim());
                skill.setSkillId(Integer.parseInt(skillId));
                skill.setSkillName(skillName.trim());
                skill.setStatus(Boolean.parseBoolean(skillStatus));
                if (existSkill == null || existSkill.getSkillId() == skill.getSkillId()) {
                    boolean isUpdated = skillDAO.updateSkill(skill);
                    setRequestAttributes(request, isUpdated ? "Update Successful!" : "Update Failed!", isUpdated ? "success" : "error");
                } else {
                    setRequestAttributes(request, "Skill already exists", "error");
                }

                break;
            default:
                doGet(request, response);
                return;
        }

        doGet(request, response);
    }

    private void handleDeleteSkill(HttpServletRequest request, String skillId) {
        try {
            boolean isDeleted = skillDAO.deleteSkill(Integer.parseInt(skillId));
            setRequestAttributes(request, isDeleted ? "Delete Successful!" : "Delete Failed!", isDeleted ? "success" : "error");
        } catch (NumberFormatException e) {
            setRequestAttributes(request, "Invalid Skill ID", "error");
        }
    }

    private void setRequestAttributes(HttpServletRequest request, String message, String status) {
        request.setAttribute("message", message);
        request.setAttribute("status", status);
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

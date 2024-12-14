/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.CVDAO;
import Model.CV;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class MentorServlet extends HttpServlet {

    private final CVDAO cvDAO = new CVDAO();

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

        String searchName = request.getParameter("searchName");
        String page = request.getParameter("page");
        int totalPage = cvDAO.getTotalCvMentor();
        if (page == null || Integer.parseInt(page) > totalPage || Integer.parseInt(page) <= 0) {
            page = "1";
        }

        List<CV> cvList;
        if (searchName != null) {
            cvList = cvDAO.getAllCvMentor("", Integer.parseInt(page));
            List<CV> toRemove = new ArrayList<>();
            for (CV cv : cvList) {
                String name = cv.getApplicant().getName();
                if (!name.toLowerCase().contains(searchName.toLowerCase().trim())) {
                    toRemove.add(cv);
                }
            }
            cvList.removeAll(toRemove);
        } else {
            cvList = cvDAO.getAllCvMentor("", Integer.parseInt(page));
        }

        request.setAttribute("searchName", searchName);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("cvList", cvList);
        request.getRequestDispatcher("view/mentor/mentor-list.jsp").forward(request, response);
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

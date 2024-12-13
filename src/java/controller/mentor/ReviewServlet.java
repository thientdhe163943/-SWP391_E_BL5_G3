/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.CVDAO;
import Dao.CvDetailDAO;
import Model.CV;
import Model.CvDetail;
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
public class ReviewServlet extends HttpServlet {

    private final CVDAO cvDAO = new CVDAO();
    private final CvDetailDAO cvDetailDAO = new CvDetailDAO();

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
        if (user == null) {
            response.sendRedirect("login");
            return;
        }
        String page = request.getParameter("page");
        if (page == null) {
            page = "1";
        }
        CV cv = cvDAO.getCvByUserId(user.getUserId());
        int totalPage = cv.getCvDetailList().size() / 3;

        if (cv.getCvDetailList().size() % 3 != 0) {
            totalPage++;
        }
        List<CvDetail> reviews = cvDetailDAO.getAllByCvId(cv.getCvId(), Integer.parseInt(page));
        request.setAttribute("page", page);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("reviews", reviews);
        request.setAttribute("mentor", user);
        request.getRequestDispatcher("view/mentor/mentor-review.jsp").forward(request, response);
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

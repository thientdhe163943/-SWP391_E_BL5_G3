/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentee;

import Dao.RequestDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import Model.Request;
import Model.User;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author Hayashi
 */
public class MenteeRequestListServlet extends HttpServlet {

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
            out.println("<title>Servlet MenteeRequestListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MenteeRequestListServlet at " + request.getContextPath() + "</h1>");
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
        var session = request.getSession();

        if (session == null || session.getAttribute("user") == null) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
        } else {
            RequestDAO dao = new RequestDAO();
            String titleSearch = request.getParameter("requestSearch");
            var user = (User) session.getAttribute("user");
            ArrayList<Request> requestList = dao.getAllVisibleRequestsWithMenteeId(titleSearch, user.getUserId());
            String sortOrder = request.getParameter("sortOrder");

            if (sortOrder != null && !sortOrder.isEmpty()) {
                switch (sortOrder) {
                    case "title": {
                        requestList.sort((r1, r2) -> r1.getTitle().compareTo(r2.getTitle()));
                        break;
                    }
                    case "mentor": {
                        requestList.sort((r1, r2) -> r1.getMentor().getName().compareTo(r2.getMentor().getName()));
                        break;
                    }
                    case "deadline": {
                        requestList.sort((r1, r2) -> r1.getDeadline().compareTo(r2.getDeadline()));
                        break;
                    }
                }
            }

            request.setAttribute("requestList", requestList);
            request.setAttribute("sortOrder", sortOrder);
            request.setAttribute("requestSearch", titleSearch);

            request.getRequestDispatcher("./view/mentee/mentee-home.jsp").forward(request, response);
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
    }

}

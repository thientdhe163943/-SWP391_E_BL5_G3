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
import java.util.Collections;

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
        RequestDAO dao = new RequestDAO();
        ArrayList<Request> requestList = dao.getAllRequests();

        request.setAttribute("requestList", requestList);

        request.getRequestDispatcher("../view/mentee/home.jsp").forward(request, response);
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
        RequestDAO dao = new RequestDAO();
        String sortOrder = (String) request.getParameter("sortOrder");
        System.out.println("sortOrder");
        ArrayList<Request> requestList = dao.getAllRequests();;

        if (sortOrder == null || sortOrder.isEmpty()) {
            request.setAttribute("requestList", requestList);
        } else if (sortOrder.equalsIgnoreCase("title")) {
            requestList.sort((o1, o2) -> o1.getTitle().compareTo(o2.getTitle()));
            request.setAttribute("requestList", requestList);

        } else if (sortOrder.equalsIgnoreCase("mentor")) {
            requestList.sort((o1, o2) -> o1.getMentor().getName().compareTo(o2.getMentor().getName()));
            request.setAttribute("requestList", requestList);
        }

        request.getRequestDispatcher("../view/mentee/home.jsp").forward(request, response);
    }

}

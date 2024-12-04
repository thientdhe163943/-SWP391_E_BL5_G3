/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentee;

import Dao.RequestDAO;
import Model.Request;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Hayashi
 */
public class MenteeRequestSortServlet extends HttpServlet {

    private final RequestDAO dao = new RequestDAO();

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
            out.println("<title>Servlet MenteeRequestSortServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MenteeRequestSortServlet at " + request.getContextPath() + "</h1>");
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
        ArrayList<Request> requestList = dao.getAllRequests();

        String sortOrder = request.getParameter("sortOrder");

        if (requestList == null) {
            request.setAttribute("error", "There are no requests");
            request.setAttribute("requestList", requestList);
            request.getRequestDispatcher("view/mentee/home.jsp").forward(request, response);
        }
        else if (sortOrder == null || sortOrder.isEmpty()) {
            request.setAttribute("requestList", requestList);
            request.getRequestDispatcher("./view/mentee/home.jsp").forward(request, response);
        } else if (sortOrder.equalsIgnoreCase("title")) {
            requestList.sort((r1, r2) -> r1.getTitle().compareToIgnoreCase(r2.getTitle()));
            request.setAttribute("requestList", requestList);
            request.getRequestDispatcher("./view/mentee/home.jsp").forward(request, response);
        } else if (sortOrder.equalsIgnoreCase("mentor")) {
            requestList.sort((r1, r2) -> r1.getMentor().getName().compareToIgnoreCase(r2.getMentor().getName()));
            request.setAttribute("requestList", requestList);
            request.getRequestDispatcher("./view/mentee/home.jsp").forward(request, response);
        } else if (sortOrder.equalsIgnoreCase("deadline")) {
            requestList.sort((r1, r2) -> r1.getDeadline().compareTo(r2.getDeadline()));
            request.setAttribute("requestList", requestList);
            request.getRequestDispatcher("./view/mentee/home.jsp").forward(request, response);
        } else {
            String error = "Request not found";
            request.setAttribute("error", error);
            request.getRequestDispatcher("./view/mentee/home.jsp").forward(request, response);
        }
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;


import Dao.CVDAO;
import Dao.UserDAO;
import Model.CV;

import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@WebServlet(name = "SigupServlet", urlPatterns = {"/signup"})

public class SigupServlet extends HttpServlet {

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
            out.println("<title>Servlet SigupServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SigupServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        request.getRequestDispatcher("SignUp.jsp").forward(request, response);
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
        // Lấy dữ liệu từ form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Kiểm tra dữ liệu nhập
        if (email.isEmpty() || password == null || password.isEmpty()) {
            request.setAttribute("message", "email and password cannot be empty.");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }
        if (!password.equals(confirmPassword)) {
            request.setAttribute("message", "Password and confirm password do not match.");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }

        // Kiểm tra nếu tên người dùng đã tồn tại
        // Kiểm tra nếu tên người dùng đã tồn tại
        UserDAO d = new UserDAO();
        CVDAO cvdao = new CVDAO();
        if (d.isUserExists(email)) {
            // Nếu tên người dùng đã tồn tại
            request.setAttribute("message", "Email already exists. Please choose a different Email.");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }
        
        User acc = d.addUserr(email, password);
        if(acc != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", acc);
            d.addRole(acc.getUserId());
            CV cv = new CV();
            cv.setApplicant(acc);
            cvdao.addCV(cv);
            response.sendRedirect("home");
            
        } else {
         request.setAttribute("mess", "login not success");
         request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Handles adding accounts to the system";
    }
}
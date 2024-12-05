/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;


import Dao.AccountDAO;
import Dao.UserDAO;
import Model.Account;
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
        try ( PrintWriter out = response.getWriter()) {
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Kiểm tra dữ liệu nhập
        if (username.isEmpty() || username.isEmpty() || password == null || password.isEmpty()) {
            request.setAttribute("message", "Username and password cannot be empty.");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }
        if (!password.equals(confirmPassword)) {
            String mess = "Password and confirm password do not match.";
            request.setAttribute("message", mess);
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }

        // Thêm tài khoản vào cơ sở dữ liệu
        AccountDAO accountDAO = new AccountDAO();
        UserDAO user=new UserDAO();
        Account acc=new Account(username, password);
        
        Account isAdded = accountDAO.addAccount(username, password);
        boolean addUser=user.addUser(isAdded.getAccountId());
        
        HttpSession session = request.getSession();
        
        if (isAdded!=null) {
            // Thành công
            
            session.setAttribute("account", acc);
            request.setAttribute("message", "Account added successfully!");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } else {
            // Thất bại
            request.setAttribute("message", "Failed to add account. Please try again.");
        }

        // Quay lại trang thêm tài khoản
        request.getRequestDispatcher("SignUp.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Handles adding accounts to the system";
    }
}

    


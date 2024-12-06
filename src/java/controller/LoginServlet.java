package controller;

import Dao.AccountDAO;
import Dao.UserDAO;
import Model.Account;
import Model.BaseUser;
import Model.User;
import Model.User_role;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect to login page if it's a GET request
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO daoUser = new UserDAO();
         AccountDAO acc = new AccountDAO();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Kiểm tra thông tin đăng nhập
        Account ac = acc.validateCustomer(username, password);

        if (ac != null) {
            HttpSession session = request.getSession();
          
                  User us = daoUser.getUserByAccountId(ac.getAccountId());
                  User_role usr=daoUser.getRoleByUser_id(us.getUserId());
                        session.setAttribute("user", us);
                switch (usr.getRole_id()) {
                    case 1: // Role User
                        
                        response.sendRedirect("home");
                        break;
                    case 2: // Role Mentor
                        
                        response.sendRedirect("home");
                        break;
                    case 3: // Role Admin
                        
                        response.sendRedirect("admin");
                        break;
                    default:
                        request.setAttribute("mess", "You do not have permission to access the system.");
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
            
            
        } else {
            // Đăng nhập không thành công
            request.setAttribute("mess", "Username or password is incorrect.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Handles user login and redirects based on roles";
    }

}

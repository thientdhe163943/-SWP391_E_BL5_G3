package controller;

import Dao.UserDAO;
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
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO daoUser = new UserDAO();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
    
        User user = daoUser.validateCustomer(username, password);
        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            User_role ur=daoUser.getUserByUserId(user.getUserId());
           
            
            if (ur.getRole_id()==1) {
                response.sendRedirect("home");
            } else if (ur.getRole_id()==2) {
                response.sendRedirect("home");
            } else if (ur.getRole_id()==3) {
                response.sendRedirect("Admin");
            } else {
                // Người dùng không có quyền hoặc không hoạt động
                request.setAttribute("mess", "You do not have permission to access the system.");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("mess", "Email or password is wrong");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

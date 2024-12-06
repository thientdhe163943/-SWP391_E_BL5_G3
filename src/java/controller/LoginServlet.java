//package controller;
//
//import Dao.AccountDAO;
//import Dao.UserDAO;
//import Model.BaseUser;
//import Model.User;
//import Model.User_role;
//import java.io.IOException;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
//public class LoginServlet extends HttpServlet {
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        // Redirect to login page if it's a GET request
//        request.getRequestDispatcher("Login.jsp").forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        UserDAO daoUser = new UserDAO();
//        
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        // Kiểm tra thông tin đăng nhập
//        BaseUser baseUser = daoUser.validateUser(username, password);
//
//        if (baseUser != null) {
//            HttpSession session = request.getSession();
//            
//
//            if (baseUser instanceof User_role) {
//                User_role userRole = (User_role) baseUser;
//                User user=daoUser.getUserByIdd(userRole.getRole_id());
//                        session.setAttribute("user", user);
//                switch (userRole.getRole_id()) {
//                    case 1: // Role User
//                        
//                        response.sendRedirect("home");
//                        break;
//                    case 2: // Role Mentor
//                        
//                        response.sendRedirect("mentor");
//                        break;
//                    case 3: // Role Admin
//                        
//                        response.sendRedirect("admin");
//                        break;
//                    default:
//                        request.setAttribute("mess", "You do not have permission to access the system.");
//                        request.getRequestDispatcher("Login.jsp").forward(request, response);
//                }
//            } else {
//                response.sendRedirect("home"); // Người dùng không có vai trò
//            }
//        } else {
//            // Đăng nhập không thành công
//            request.setAttribute("mess", "Username or password is incorrect.");
//            request.getRequestDispatcher("Login.jsp").forward(request, response);
//        }
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Handles user login and redirects based on roles";
//    }
//
//}

//package controller;
//
//import Dao.AccountDAO;
//import Dao.UserDAO;
//import Model.BaseUser;
//import Model.User_role;
//import Model.User;
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
//        request.getRequestDispatcher("Login.jsp").forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        AccountDAO daoAccount = new AccountDAO();
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
//            session.setAttribute("user", baseUser);
//
//            if (baseUser instanceof User_role) {
//                User_role userRole = (User_role) baseUser;
//
//                // Điều hướng dựa trên vai trò người dùng
//                switch (userRole.getRole_id()) {
//                    case 1: // User
//                        response.sendRedirect("home");
//                        break;
//                    case 2: // Mentor
//                        response.sendRedirect("mentor");
//                        break;
//                    case 3: // Admin
//                        response.sendRedirect("admin");
//                        break;
//                    default:
//                        request.setAttribute("mess", "You do not have permission to access the system.");
//                        request.getRequestDispatcher("Login.jsp").forward(request, response);
//                }
//            } else if (baseUser instanceof User) {
//                // Điều hướng mặc định cho User
//                response.sendRedirect("home");
//            }
//        } else {
//            // Thông tin đăng nhập không hợp lệ
//            request.setAttribute("mess", "Username or password is incorrect.");
//            request.getRequestDispatcher("Login.jsp").forward(request, response);
//        }
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }
//}

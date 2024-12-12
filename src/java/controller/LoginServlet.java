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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Kiểm tra tài khoản admin hardcoded
        if ("admin".equals(email) && "admin".equals(password)) {
            HttpSession session = request.getSession();
            User adminUser = new User(); // Tạo đối tượng giả lập cho admin
            adminUser.setUserId(0); // ID đặc biệt để phân biệt
            adminUser.setName("Administrator");
            adminUser.setEmail("admin");
            session.setAttribute("user", adminUser);

            response.sendRedirect("admin"); // Chuyển đến trang admin
            return;
        }

        // Kiểm tra tài khoản trong cơ sở dữ liệu
        User user = daoUser.validateCustomer(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Lấy role của user từ cơ sở dữ liệu
            User_role userRole = daoUser.getUserByUserId(user.getUserId());

            if (userRole != null) {
                int roleId = userRole.getRole_id();

                if (roleId == 1) { // Quản trị viên từ cơ sở dữ liệu
                    response.sendRedirect("home");
                } else if (roleId == 2) { // Người dùng bình thường
                    response.sendRedirect("home");
                } else {
                    request.setAttribute("mess", "Your role is not allowed to access the system.");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("mess", "Failed to fetch user role. Please contact support.");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("mess", "Email or password is incorrect.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Login Servlet handles user login and authorization.";
    }
}

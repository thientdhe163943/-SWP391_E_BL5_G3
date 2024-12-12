package controller;


import Dao.UserDAO;

import Model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.util.regex.Pattern;
import java.sql.Date; 

/**
 * ProfileServlet handles profile-related requests.
 */


// Servlet URL
@WebServlet(name = "ProfileControler", urlPatterns = {"/profile"})
public class ProfileControler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy dữ liệu từ request
        String name = request.getParameter("name");
        String genderParam = request.getParameter("gender");
        String dobParam = request.getParameter("dob");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String avatar = request.getParameter("avatar");

        // Chuyển đổi dữ liệu cần thiết
        Boolean gender = (genderParam != null) ? Boolean.valueOf(genderParam) : null;
        Date dob = (dobParam != null && !dobParam.isEmpty()) ? Date.valueOf(dobParam) : null;

        // Lấy đối tượng User từ session (giả sử đã đăng nhập)
        User user = (User) request.getSession().getAttribute("user");

        if (user != null) {
            // Cập nhật thông tin
            user.updateProfile(name, gender, dob, phone, address, email, avatar);

            // Cập nhật session
            request.getSession().setAttribute("user", user);

            // Redirect hoặc forward về trang thông báo thành công
            request.setAttribute("message", "Cập nhật thông tin thành công!");
            request.getRequestDispatcher("Profile.jsp").forward(request, response);
        } else {
            // Nếu user chưa đăng nhập
            response.sendRedirect("Login.jsp");
        }
        
    }
    
}


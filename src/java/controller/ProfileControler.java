package controller;

import Dao.AccountDAO;
import Dao.UserDAO;
import Model.Account;
import Model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.util.regex.Pattern;
import java.sql.Date; 

/**
 * ProfileServlet handles profile-related requests.
 */
public class ProfileControler extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String[] listService = {"User info", "Change password"};
        request.setAttribute("listService", listService);

        User acc = (User) session.getAttribute("User");
        String service = request.getParameter("Service");

        if (acc != null) {
            if (service == null) {
                service = listService[0];
            }
            request.setAttribute("current", service);
            request.getRequestDispatcher("Profile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        AccountDAO accountDAO = new AccountDAO();
        
        String service = request.getParameter("Service");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        Account account = (Account) session.getAttribute("Account");

        if (service == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Service không được để trống.");
            return;
        }

        if (user == null) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Bạn phải đăng nhập để thực hiện thao tác này.");
            return;
        }

        switch (service) {
            case "updateInfo":
                updateInfo(request, response, userDAO, session, user);
                break;
            case "updatePassword":
                updatePassword(request, response, accountDAO, account);
                break;
            default:
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Yêu cầu không hợp lệ.");
        }
    }
private void updateInfo(HttpServletRequest request, HttpServletResponse response, UserDAO d, HttpSession session, User acc)
        throws ServletException, IOException {
    try {
        String name = request.getParameter("name");
        Boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String dobParam = request.getParameter("dob"); // Lấy giá trị từ request
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String avatar = request.getParameter("avatar");

        // Kiểm tra giá trị ngày sinh (DOB)
        Date dob = null;
        if (dobParam != null && !dobParam.isEmpty()) {
            try {
              dob = Date.valueOf(dobParam); // Chuyển đổi nếu định dạng đúng
            } catch (IllegalArgumentException e) {
                request.setAttribute("error", "Ngày sinh không hợp lệ. Vui lòng nhập định dạng yyyy-MM-dd.");
                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                return;
            }
        }

        // Kiểm tra các trường khác
        if (name == null || name.isEmpty() || phone == null || phone.isEmpty() || address == null || address.isEmpty() || email == null || email.isEmpty()) {
            request.setAttribute("error", "Vui lòng điền đầy đủ thông tin.");
            request.getRequestDispatcher("Profile.jsp").forward(request, response);
            return;
        }

        // Cập nhật thông tin người dùng
        acc.setName(name);
        acc.setGender(gender);
        acc.setDOB(dob);
        acc.setPhone(phone);
        acc.setAddress(address);
        acc.setEmail(email);
        acc.setAvatar(avatar);
       

        boolean isUpdated = d.updateUserInfo(name, gender, dob, phone, address, avatar, acc.getAccountId());

        if (isUpdated) {
            session.setAttribute("User", acc); // Cập nhật thông tin mới vào session
            request.setAttribute("message", "Cập nhật thông tin thành công.");
        } else {
            request.setAttribute("error", "Cập nhật thông tin thất bại.");
        }
        request.getRequestDispatcher("Profile.jsp").forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
        request.setAttribute("error", "Có lỗi xảy ra. Vui lòng thử lại.");
        request.getRequestDispatcher("Profile.jsp").forward(request, response);
    }
}



    private void updatePassword(HttpServletRequest request, HttpServletResponse response, AccountDAO accountDAO, Account account)
            throws ServletException, IOException {
        try {
            String currentPassword = request.getParameter("currentPassword");
            String newPassword = request.getParameter("newPassword");
            String confirmPassword = request.getParameter("confirmPassword");

            // Kiểm tra mật khẩu hiện tại
            if (!account.getPassword().equals(currentPassword)) {
                request.setAttribute("error", "Mật khẩu hiện tại không đúng.");
                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                return;
            }

            // Kiểm tra mật khẩu mới
            if (!newPassword.equals(confirmPassword)) {
                request.setAttribute("error", "Mật khẩu mới và xác nhận không khớp.");
                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                return;
            }

            if (!isValidPassword(newPassword)) {
                request.setAttribute("error", "Mật khẩu phải có ít nhất 8 ký tự, bao gồm cả chữ và số.");
                request.getRequestDispatcher("Profile.jsp").forward(request, response);
                return;
            }

            // Cập nhật mật khẩu
            boolean isUpdated = accountDAO.updatePassword(account.getAccountId(), newPassword);

            if (isUpdated) {
                account.setPassword(newPassword); // Cập nhật mật khẩu mới vào session
                request.setAttribute("message", "Đổi mật khẩu thành công.");
            } else {
                request.setAttribute("error", "Đổi mật khẩu thất bại. Vui lòng thử lại.");
            }

            request.getRequestDispatcher("Profile.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Có lỗi xảy ra. Vui lòng thử lại.");
            request.getRequestDispatcher("Profile.jsp").forward(request, response);
        }
    }

    private boolean isValidPassword(String password) {
        if (password == null || password.length() < 8) {
            return false;
        }
        boolean hasLetter = false;
        boolean hasDigit = false;
        for (char c : password.toCharArray()) {
            if (Character.isLetter(c)) {
                hasLetter = true;
            } else if (Character.isDigit(c)) {
                hasDigit = true;
            }
            if (hasLetter && hasDigit) {
                return true;
            }
        }
        return false;
    }

    private boolean isValidName(String name) {
        String regex = "^[a-zA-Z\\s]+$";
        return name != null && Pattern.matches(regex, name);
    }

    private void setCommonAttributes(HttpServletRequest request) {
        String[] listService = {"Account info", "Change password"};
        request.setAttribute("listService", listService);
    }

    @Override
    public String getServletInfo() {
        return "ProfileServlet handles profile-related requests";
    }

    
}

package controller;

import Dao.AccountDAO;
import Model.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "changePasswordwithOldPass", urlPatterns = {"/changePasswordwithOldPass"})
public class changePasswordwithOldPass extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        AccountDAO d = new AccountDAO();
        
        // Kiểm tra session để lấy account đã đăng nhập
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");
        
       

        // Gọi phương thức cập nhật mật khẩu
        updatePassword(request, response, d, acc);
    }

    private void updatePassword(HttpServletRequest request, HttpServletResponse response, AccountDAO d, Account acc)
            throws ServletException, IOException {
        
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        String mess = "";
        boolean isSuccess = false;

        // Kiểm tra mật khẩu cũ
        if (d.validateCustomer(acc.getUsername(), currentPassword) != null) {
            // Kiểm tra tính hợp lệ của mật khẩu mới
            if (isValidPassword(newPassword)) {
                if (newPassword.equals(confirmPassword)) {
                    d.updatePassword(newPassword, acc.getAccountId());
                    mess = "Password changed successfully!";
                    isSuccess = true;
                } else {
                    mess = "The confirm password does not match the new password.";
                }
            } else {
                mess = "New password must be at least 8 characters long and contain both letters and digits.";
            }
        } else {
            mess = "Current password is incorrect.";
        }

        // Gửi thông báo về kết quả xử lý
        request.setAttribute("mess", mess);
        request.setAttribute("isSuccess", isSuccess);
        setCommonAttributes(request); // Bạn cần triển khai phương thức này hoặc xóa nếu không cần thiết
        request.setAttribute("current", "Change password");
        request.getRequestDispatcher("changePasswordwithOldPass.jsp").forward(request, response);
    }

    private boolean isValidPassword(String password) {
        if (password.length() < 8) {
            return false; // Mật khẩu phải ít nhất 8 ký tự
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
                return true; // Mật khẩu phải có cả chữ cái và số
            }
        }
        return false;
    }

    @Override
    public String getServletInfo() {
        return "Servlet for handling password change with old password verification.";
    }

    private void setCommonAttributes(HttpServletRequest request) {
        // Bạn có thể thiết lập các thuộc tính chung cho request ở đây (ví dụ: menu, thông tin người dùng...)
        // Còn nếu không cần, bạn có thể bỏ phương thức này đi
    }
}

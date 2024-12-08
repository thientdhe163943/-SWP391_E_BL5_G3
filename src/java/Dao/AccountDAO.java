/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.Account;
import com.sun.jdi.connect.spi.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hayashi
 */
public class AccountDAO extends DBConnect {

    java.sql.Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account getAccountById(int id) {
        String sql = "select a.account_id,a.username,a.password,ur.role_id\n"
                + "from [User] u,Account a,User_Role ur\n"
                + "where u.account_id=a.account_id and u.user_id=ur.user_id and a.account_id=?";
        Account cus = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cus = new Account(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("role_id")
                );
                return cus;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return cus;
    }

    public Account getAccountByEmail(String email) {
        String sql = "SELECT a.account_id, a.username, a.password, r.role_id \n"
                + "                 FROM [User] u \n"
                + "                 JOIN Account a ON u.account_id = a.account_id \n"
                + "                 JOIN User_Role r ON u.[user_id] = r.[user_id] \n"
                + "                 WHERE u.email =?";
        Account account = null;
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, email);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) { // Chỉ lấy một dòng
                    account = new Account(
                            rs.getInt("account_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getInt("role_id")
                    );
                    // Gán role_id thông qua setter

                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Logging lỗi
        }
        return account;
    }

    public Account validateCustomer(String username, String password) {
        String sql = "  select *from [Account]\n"
                + "  where username=? and password=?";
        Account cus = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cus = new Account(rs.getInt("account_id"),
                         rs.getString("username"),
                         rs.getString("password")
                );
                return cus;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return cus;
    }

    public boolean updatePassword(int accountId, String newPassword) {
        String sql = "UPDATE [dbo].[Account]\n"
                + " SET [password] = ?\n"
                + " WHERE [account_id] = '?'";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newPassword);
            st.setInt(2, accountId);
            n = st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return n > 0;
    }

    public void changePassword(String password, int id) throws SQLException {

        String sql = "UPDAte Account\n"
                + "set password=?\n"
                + "where account_id=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, password);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, e);

        }
    }
//     public static void main(String[] args) throws SQLException {
//        AccountDAO dao = new AccountDAO();
//        Account acc = dao.getAccountByEmail("thientrieu20002@gmail.com");
////        dao.changePassword("123123", acc.getAccount_id());
////        String email = " or ""="";
////        Account test = dao.validateCustomer("'' or 1 = 1", "'' or 1 = 1");
////        System.out.println(test);
//        if (acc != null) {
//            System.out.println(acc);
//        } else {
//            System.out.println("Customer not found.");
//        }
//
//    }

    public boolean isUsernameExists(String username) {
        // Assuming you already have a database connection through the inherited connection object
        String query = "SELECT COUNT(*) FROM Account WHERE username = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0; // If the count is greater than 0, the username exists
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Username does not exist
    }


    public boolean updatePassword(String newPassword, int accountId) {
        String sql = "UPDATE [dbo].[Account]\n"
                + " SET [password] = ?\n"
                + " WHERE [account_id] = ?";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newPassword);
            st.setInt(2, accountId);
            n = st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return n > 0;
    }

    public Account addAccount(String username, String password) {
        String sql = "INSERT INTO Account (username, password) VALUES (?, ?)";
        Account account = null;

        try (java.sql.Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {

            // Thiết lập các tham số cho câu lệnh SQL
            ps.setString(1, username);
            ps.setString(2, password);

            // Thực thi câu lệnh
            int rowsInserted = ps.executeUpdate(); // Thực thi câu lệnh trước khi lấy khóa

            if (rowsInserted > 0) {
                try (ResultSet generatedKeys = ps.getGeneratedKeys()) { // Lấy khóa tự sinh
                    if (generatedKeys.next()) {
                        int id = generatedKeys.getInt(1); // Lấy giá trị ID tự động sinh
                        account = new Account(id, username, password); // Tạo đối tượng Account
                        System.out.println("Account added successfully with ID: " + id);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return account; // Trả về null nếu không thêm được
    }

    public static void main(String[] args) {
        AccountDAO accountDAO = new AccountDAO();
        UserDAO userDAO = new UserDAO();

        String username = "thi";
        String password = "123";

        Account result = accountDAO.addAccount(username, password);

        if (result != null) { // Kiểm tra xem account có được tạo thành công không
            boolean result1 = userDAO.addUser(result.getAccountId());
            if (result1) {
                System.out.println("Account and user added successfully!");
            } else {
                System.out.println("Failed to add user.");
            }
        } else {
            System.out.println("Failed to add account.");
        }
    }

}

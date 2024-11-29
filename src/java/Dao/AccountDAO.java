/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
    public Account validateCustomer(String username, String password) {
        String sql = "select a.account_id,a.username,a.password,ur.role_id\n"
                + "from [User] u,Account a,User_Role ur\n"
                + "where u.account_id=a.account_id and u.user_id=ur.user_id and a.username = ? and a.password =?";
        Account cus = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
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
    public static void main(String[] args) throws SQLException {
        AccountDAO dao = new AccountDAO();
        Account acc = dao.validateCustomer("john_doe","password123");
//        dao.changePassword("123123", acc.getAccount_id());
//        String email = " or ""="";
//        Account test = dao.validateCustomer("'' or 1 = 1", "'' or 1 = 1");
//        System.out.println(test);
        if (acc != null) {
            System.out.println(acc);
        } else {
            System.out.println("Customer not found.");
        }

    }
}

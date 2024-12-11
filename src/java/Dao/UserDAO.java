/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.User;
import DB.DBConnect;

import Model.User_role;

import Model.User_role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hayashi
 */
public class UserDAO extends DBConnect {

    public User validateCustomer(String email, String password) {
        String sql = "SELECT * FROM [User] where email = ? and password = ?";
        User acc = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new User(
                        rs.getInt("user_id"),
                        rs.getString("name"),
                        rs.getBoolean("gender"),
                        rs.getDate("DOB"),
                        rs.getString("phone"),
                        rs.getString("Address"),
                        rs.getString("email"),
                        rs.getString("avatar"),
                        rs.getBoolean("status"),
                        rs.getString("password")
                );
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return acc;
    }

    public User getUserByEmail(String email) {
        String sql = "SELECT * FROM [User] WHERE email = ?";
        User user = null;

        try {
            Connection connection = new DBConnect().getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email); // Email (hoặc username) được truyền vào
            ResultSet rs = ps.executeQuery();

            if (rs.next()) { // Lấy dữ liệu người dùng từ ResultSet
                user = new User(
                        rs.getInt("user_id"),
                        rs.getString("name"),
                        rs.getBoolean("gender"),
                        rs.getDate("DOB"),
                        rs.getString("phone"),
                        rs.getString("address"),
                        rs.getString("email"),
                        rs.getString("avatar"),
                        rs.getBoolean("status"),
                        rs.getString("password")
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return user;
    }

    public User_role getUserByUserId(int user_id) {
        String sql = "SELECT * FROM [User_Role] where user_id=?";
        User_role ur = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ur = new User_role(rs.getInt("user_role_id"),
                         rs.getInt("role_id"),
                         rs.getInt("user_id")
                );
                return ur;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return ur;
    }

    public void changePassword(String password, int id) throws SQLException {

        String sql = "UPDAte [User]\n"
                + "set password=?\n"
                + "where user_id=?";
        try {
            Connection connection = new DBConnect().getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);
            ps = connection.prepareStatement(sql);
            ps.setString(1, password);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);

        }
    }

    public boolean updatePassword(String newPassword, int id) {
        String sql = "UPDAte [User]\n"
                + "set password=?\n"
                + "where user_id=?";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newPassword);
            st.setInt(2, id);
            n = st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return n > 0;
    }

    public List<User> SearchlMentor(String txtSearch) {
        List<User> list = new ArrayList<>();
        String sql = "select u.*\n"
                + "from [user] u, User_Role ur\n"
                + "where u.user_id=ur.user_id and role_id=2 and u.name like ?";

        try {
            Connection connection = new DBConnect().getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) { // Lấy dữ liệu người dùng từ ResultSet
                list.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9),
                        rs.getString(10)
                )
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<User> getAllMentor() {
        List<User> list = new ArrayList<>();
        String sql = "select u.*\n"
                + "from [user] u, User_Role ur\n"
                + "where u.user_id=ur.user_id and role_id=2";

        try {
            Connection connection = new DBConnect().getConnection();

            PreparedStatement ps = connection.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) { // Lấy dữ liệu người dùng từ ResultSet
                list.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9),
                        rs.getString(10)
                )
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User getUserByIdd(int id) {
        String sql = "SELECT * FROM [User] WHERE user_id = ?";
        User user = null;

        // Sử dụng try-with-resources để đảm bảo tài nguyên sẽ được đóng tự động
        try (Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setUserId(rs.getInt("user_id"));

                    user.setAddress(rs.getString("address"));
                    user.setName(rs.getString("name"));
                    user.setGender(rs.getBoolean("gender"));
                    user.setDOB(rs.getDate("DOB"));
                    user.setPhone(rs.getString("phone"));
                    user.setEmail(rs.getString("email"));
                    user.setAvatar(rs.getString("avatar"));
                    user.setStatus(rs.getBoolean("status"));
                    user.setAvatar(rs.getString("password"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public boolean addRole(int accountID) {
        String sql = "INSERT INTO [dbo].[User_Role]\n"
                + "           ([user_id]\n"
                + "           ,[role_id])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,1)";
        boolean isInserted = false;

        try (java.sql.Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql)) {

            // Thiết lập các tham số cho câu lệnh SQL
            ps.setInt(1, accountID);

            // Thực thi câu lệnh và kiểm tra số dòng bị ảnh hưởng
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                isInserted = true;
                System.out.println("Account added successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isInserted;
    }

    public void deleteUser(int userId) {
        String sql = "DELETE FROM [User] WHERE user_id = ?";
        try (Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, userId);

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<User> getAllUsers() {
        ArrayList<User> userList = new ArrayList<>(); // Khởi tạo mảng danh sách người dùng
        String sql = "SELECT * FROM [User]";

        try (
                Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                User newUser = new User();
                newUser.setUserId(rs.getInt("user_id"));
                newUser.setName(rs.getString("name"));
                newUser.setGender(rs.getBoolean("gender"));
                newUser.setDOB(rs.getDate("DOB"));
                newUser.setPhone(rs.getString("phone"));
                newUser.setAddress(rs.getString("address"));
                newUser.setEmail(rs.getString("email"));
                newUser.setAvatar(rs.getString("avatar"));
                newUser.setStatus(rs.getBoolean("status"));
                newUser.setPassword(rs.getString("password")); // Sửa trường lấy password đúng

                userList.add(newUser);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return userList;
    }

    public void addUser(User user) {
        String sql = "INSERT INTO [User] (name, gender, DOB, phone, address, email, avatar, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, user.getName());
            ps.setBoolean(2, user.getGender());
            ps.setDate(3, user.getDOB());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getEmail());
            ps.setString(7, user.getAvatar());
            ps.setString(8, user.getPassword());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        String sql = "UPDATE [User] SET name = ?, gender = ?, phone = ?, address = ?, email = ?, avatar = ? WHERE user_id = ?";
        try (Connection connection = new DBConnect().getConnection(); PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, user.getName());
            ps.setBoolean(2, user.getGender());

            ps.setString(3, user.getPhone());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getAvatar());
            ps.setInt(7, user.getUserId());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    public int getTotalUsers() {
    String sql = "SELECT COUNT(*) FROM [user]";
    try ( PreparedStatement ps = connection.prepareStatement(sql);
         ResultSet resultSet = ps.executeQuery()) {
        if (resultSet.next()) {
            return resultSet.getInt(1);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return 0; // Trả về 0 nếu xảy ra lỗi
}

       public List<User> getUsersByPage(int page) {
    List<User> users = new ArrayList<>();
    int start = (page - 1) * 5; // Tính toán offset
    String sql = "SELECT * " +
                 "FROM [user] " +
                 "ORDER BY user_id " +
                 "OFFSET ? ROWS FETCH NEXT 5 ROWS ONLY";

    try ( PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
        preparedStatement.setInt(1, start);         // Truyền offset vào SQL
       

        try (ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                User user = new User(
                        resultSet.getInt("user_id"),
                        resultSet.getString("name"),
                        resultSet.getBoolean("gender"),
                        resultSet.getDate("DOB"),
                        resultSet.getString("phone"),
                        resultSet.getString("address"),
                        resultSet.getString("email"),
                        resultSet.getString("avatar"),
                        resultSet.getBoolean("status"),
                        resultSet.getString("password")
                );
                users.add(user);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return users;
}
       public boolean isUserExists(String email) {
        // Assuming you already have a database connection through the inherited connection object
        String query = "SELECT COUNT(*) FROM [User] WHERE email = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, email);
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
//        public User addAccount(String username, String password) {
//        String sql = "INSERT INTO Account (username, password) VALUES (?, ?)";
//        User user = null;
//
//        try ( PreparedStatement ps = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
//
//            // Thiết lập các tham số cho câu lệnh SQL
//            ps.setString(1, username);
//            ps.setString(2, password);
//
//            // Thực thi câu lệnh
//            int rowsInserted = ps.executeUpdate(); // Thực thi câu lệnh trước khi lấy khóa
//
//            if (rowsInserted > 0) {
//                try (ResultSet generatedKeys = ps.getGeneratedKeys()) { // Lấy khóa tự sinh
//                    if (generatedKeys.next()) {
//                        int id = generatedKeys.getInt(1); // Lấy giá trị ID tự động sinh
//                        user = new Account(id, username, password); // Tạo đối tượng Account
//                        System.out.println("Account added successfully with ID: " + id);
//                    }
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return account; // Trả về null nếu không thêm được
//    }

    public static void main(String[] args) throws SQLException {
        UserDAO daoUser = new UserDAO();
        List<User> list=daoUser.getUsersByPage(1);
        int count = daoUser.getTotalUsers();
        for (User user : list) {
            System.out.println(user);
        }

    }
}

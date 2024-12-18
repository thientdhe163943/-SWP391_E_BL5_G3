/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import DB.DBConnect;
import Model.FreeTime;
import java.util.List;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;

/**
 *
 * @author ADMIN
 */
public class FreeTimeDAO extends DBConnect {

    private static final Logger logger = Logger.getLogger(FreeTimeDAO.class.getName());
    private final UserDAO userDAO = new UserDAO();
    private LocalDate currentDate = LocalDate.now();
    // Lấy tất cả FreeTime

    public List<FreeTime> getAllFreeTimes() {
        List<FreeTime> list = new ArrayList<>();
        String query = "SELECT * FROM FreeTime Order by Date desc";
        try (PreparedStatement stm = connection.prepareStatement(query); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                FreeTime freeTime = new FreeTime();
                freeTime.setTimeId(rs.getInt("time_id"));
                freeTime.setUser(userDAO.getUserByIdd(rs.getInt("user_id"))); // Hàm phụ để lấy thông tin user
                freeTime.setStartTime(rs.getTime("start_time").toLocalTime());
                freeTime.setEndtime(rs.getTime("end_time").toLocalTime());
                freeTime.setDate(rs.getDate("date").toLocalDate());
                freeTime.setStatus(rs.getBoolean("status"));
                list.add(freeTime);
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy danh sách FreeTime: " + e.getMessage());
        }
        return list;
    }

    // Thêm FreeTime mới
    public boolean addFreeTime(FreeTime freeTime) {
        String query = "INSERT INTO FreeTime (user_id, start_time, end_time, date, status) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, freeTime.getUser().getUserId());
            stm.setTime(2, java.sql.Time.valueOf(freeTime.getStartTime()));
            stm.setTime(3, java.sql.Time.valueOf(freeTime.getEndtime()));
            stm.setDate(4, java.sql.Date.valueOf(freeTime.getDate()));
            stm.setBoolean(5, true);
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi thêm FreeTime: " + e.getMessage());
            return false;
        }
    }

    // Cập nhật FreeTime
    public boolean updateFreeTime(FreeTime freeTime) {
        String query = "UPDATE FreeTime SET user_id = ?, start_time = ?, end_time = ?, date = ?, status = ? WHERE time_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, freeTime.getUser().getUserId());
            stm.setTime(2, java.sql.Time.valueOf(freeTime.getStartTime()));
            stm.setTime(3, java.sql.Time.valueOf(freeTime.getEndtime()));
            stm.setDate(4, java.sql.Date.valueOf(freeTime.getDate()));
            stm.setBoolean(5, freeTime.getStatus());
            stm.setInt(6, freeTime.getTimeId());
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi cập nhật FreeTime: " + e.getMessage());
            return false;
        }
    }

    // Xóa FreeTime
    public boolean deleteFreeTime(int timeId) {
        String query = "DELETE FROM FreeTime WHERE time_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, timeId);
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi xóa FreeTime: " + e.getMessage());
            return false;
        }
    }

    // Edit status FreeTime
    public boolean changeStatus(int timeId) {
        String query = "Update FreeTime Set status = ? WHERE time_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setBoolean(1, false);
            stm.setInt(2, timeId);
            return stm.executeUpdate() > 0;
        } catch (SQLException e) {
            logger.severe("Lỗi khi change Status FreeTime: " + e.getMessage());
            return false;
        }
    }

    // Lấy FreeTime theo ID
    public FreeTime getFreeTimeById(int timeId) {
        String query = "SELECT * FROM FreeTime WHERE time_id = ?";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, timeId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    FreeTime freeTime = new FreeTime();
                    freeTime.setTimeId(rs.getInt("time_id"));
                    freeTime.setUser(userDAO.getUserByIdd(rs.getInt("user_id"))); // Hàm phụ để lấy thông tin user
                    freeTime.setStartTime(rs.getTime("start_time").toLocalTime());
                    freeTime.setEndtime(rs.getTime("end_time").toLocalTime());
                    freeTime.setDate(rs.getDate("date").toLocalDate());
                    freeTime.setStatus(rs.getBoolean("status"));
                    return freeTime;
                }
            }
        } catch (SQLException e) {
            logger.severe("Lỗi khi lấy FreeTime theo ID: " + e.getMessage());
        }
        return null;
    }

    // Lấy FreeTime theo User ID
    public List<FreeTime> getFreeTimeByUserId(int userId) {
        List<FreeTime> list = new ArrayList<>();
        String query = "SELECT * FROM FreeTime WHERE user_id = ? Order by Date desc";
        try (PreparedStatement stm = connection.prepareStatement(query)) {
            stm.setInt(1, userId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    FreeTime freeTime = new FreeTime();
                    freeTime.setTimeId(rs.getInt("time_id"));
                    freeTime.setUser(userDAO.getUserByIdd(rs.getInt("user_id"))); // Hàm phụ để lấy thông tin user
                    freeTime.setStartTime(rs.getTime("start_time").toLocalTime());
                    freeTime.setEndtime(rs.getTime("end_time").toLocalTime());
                    freeTime.setDate(rs.getDate("date").toLocalDate());
                    if (freeTime.getDate().isBefore(currentDate)) {
                        changeStatus(freeTime.getTimeId());
                    }
                    freeTime.setStatus(rs.getBoolean("status"));
                    list.add(freeTime);
                }
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Lỗi khi lấy danh sách FreeTime theo User ID: {0}", e.getMessage());
        }
        return list;
    }
}

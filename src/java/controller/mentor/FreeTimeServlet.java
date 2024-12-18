/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.mentor;

import Dao.FreeTimeDAO;
import Model.FreeTime;
import Model.User;
import Model.User_role;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Time;
import java.time.LocalTime;

/**
 *
 * @author ADMIN
 */
public class FreeTimeServlet extends HttpServlet {

    private final FreeTimeDAO freeTimeDAO = new FreeTimeDAO();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        User_role role = (User_role) session.getAttribute("userRole");
        if (user == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        if (role.getRole_id() != 2) {
            request.setAttribute("error", "Access Denied");
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
            return;
        }
        LocalDate currentDate = LocalDate.now();
        List<FreeTime> freetimeList = freeTimeDAO.getFreeTimeByUserId(user.getUserId());
        request.setAttribute("currentDate", currentDate);
        request.setAttribute("freetimeList", freetimeList);
        request.getRequestDispatcher("view/mentor/mentor-freetime.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        String action = request.getParameter("action");
        String timeId = request.getParameter("timeId");
        FreeTime freetime = new FreeTime();

        String startTimePara = request.getParameter("startTime");
        String endTimePara = request.getParameter("endTime");
        String datePara = request.getParameter("date");

        switch (action) {
            case "add":
                freetime.setUser(user);
                freetime.setStartTime(LocalTime.parse(startTimePara));
                freetime.setEndtime(LocalTime.parse(endTimePara));
                freetime.setDate(LocalDate.parse(datePara));
                if (freeTimeDAO.addFreeTime(freetime)) {
                    String message = "Add successful!"; // Hoặc "Operation failed!" tùy kết quả
                    String status = "success"; // Hoặc "error" tùy trạng thái
                    request.setAttribute("message", message);
                    request.setAttribute("status", status);
                } else {
                    String message = "Add Fail!"; // Hoặc "Operation failed!" tùy kết quả
                    String status = "error"; // Hoặc "error" tùy trạng thái
                    request.setAttribute("message", message);
                    request.setAttribute("status", status);
                }
                break;
            case "edit":
                freetime.setTimeId(Integer.parseInt(timeId));
                freetime.setUser(user);
                freetime.setStartTime(LocalTime.parse(startTimePara));
                freetime.setEndtime(LocalTime.parse(endTimePara));
                freetime.setDate(LocalDate.parse(datePara));
                freetime.setStatus(Boolean.TRUE);
                if (freeTimeDAO.updateFreeTime(freetime)) {
                    String message = "Edit successful!"; // Hoặc "Operation failed!" tùy kết quả
                    String status = "success"; // Hoặc "error" tùy trạng thái
                    request.setAttribute("message", message);
                    request.setAttribute("status", status);
                } else {
                    String message = "Edit Fail!"; // Hoặc "Operation failed!" tùy kết quả
                    String status = "error"; // Hoặc "error" tùy trạng thái
                    request.setAttribute("message", message);
                    request.setAttribute("status", status);
                }
                break;
            case "delete":
                if (freeTimeDAO.deleteFreeTime(Integer.parseInt(timeId))) {
                    String message = "Delete successful!"; // Hoặc "Operation failed!" tùy kết quả
                    String status = "success"; // Hoặc "error" tùy trạng thái
                    request.setAttribute("message", message);
                    request.setAttribute("status", status);
                } else {
                    String message = "Delete Fail!"; // Hoặc "Operation failed!" tùy kết quả
                    String status = "error"; // Hoặc "error" tùy trạng thái
                    request.setAttribute("message", message);
                    request.setAttribute("status", status);
                }
                break;
            default:
                throw new AssertionError();

        }
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

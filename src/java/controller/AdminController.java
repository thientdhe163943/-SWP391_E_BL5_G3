/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import Dao.UserDAO;

import Model.User;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author laptop368
 */
@WebServlet(name="AdminController", urlPatterns={"/admin"})
public class AdminController extends HttpServlet {
   
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        // Khởi tạo đối tượng UserDAO để làm việc với dữ liệu người dùng
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "list"; // Nếu không có action, mặc định là hiển thị danh sách người dùng
        }

        switch (action) {
            case "list":
                listUsers(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            default:
                listUsers(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "add":
                addUser(request, response);
                break;
            case "update":
                updateUser(request, response);
                break;
            default:
                listUsers(request, response);
                break;
        }
    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String indexPage=request.getParameter("index");
        
        if(indexPage==null){
            indexPage="1";
        }
        int index=Integer.parseInt(indexPage);
        
        
       
        int count=userDAO.getTotalUsers();
        int endPage=count/5;
        if(count % 5 !=0){
            endPage++;
        }
        List<User> list=userDAO.getUsersByPage(index);
        
        
        request.setAttribute("listA", list);
        request.setAttribute("endP", endPage);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDAO.getUserByIdd(userId);
        request.setAttribute("user", existingUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String avatar = request.getParameter("avatar"); // Assume this will be the URL or path of the avatar
        String password=request.getParameter("password");

        User newUser = new User(name, gender, phone, address, email, avatar,password);
        userDAO.addUser(newUser);
        response.sendRedirect("admin?action=list"); // Redirect to list after adding
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");

    // Kiểm tra giá trị id
    if (idParam == null || idParam.isEmpty()) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid or missing user ID");
        return;
    }

    try {
        int userId = Integer.parseInt(idParam);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String avatar = request.getParameter("avatar");

        
        User updatedUser = new User(userId, name, gender, phone, address, email, avatar);
        userDAO.updateUser(updatedUser);
        response.sendRedirect("admin?action=list"); // ; // Redirect to list after update
    } catch (NumberFormatException e) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid user ID format");
    }
        
        
        
       
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(userId);
        response.sendRedirect("admin?action=list"); // Redirect to list after deleting
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

} 
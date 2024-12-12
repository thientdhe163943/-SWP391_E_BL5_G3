package controller;

import Dao.BlogDAO;
import Model.Blog;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "BlogServlet", urlPatterns = {"/blog"})
public class BlogServlet extends HttpServlet {

    private BlogDAO blogDAO;

    @Override
    public void init() throws ServletException {
        try {
            // Khởi tạo BlogDAO
            blogDAO = new BlogDAO();
        } catch (Exception e) {
            throw new ServletException("Error initializing BlogDAO", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list"; // Mặc định hiển thị danh sách blog
        }

        try {
            switch (action) {
                case "list":
                    listBlog(request, response);
                    break;
                case "edit":
                    editForm(request, response);
                    break;
                case "delete":
                    deleteBlog(request, response);
                    break;
                case "add":
                    addForm(request, response);
                    break;    
                default:
                    listBlog(request, response);
                    break;
            }
        } catch (Exception e) {
            throw new ServletException("Error handling GET request", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        try {
            switch (action) {
                case "add":
                    addBlog(request, response);
                    break;
                case "update":
                    updateBlog(request, response);
                    break;
                default:
                    listBlog(request, response);
                    break;
            }
        } catch (Exception e) {
            throw new ServletException("Error handling POST request", e);
        }
    }

    private void listBlog(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException, SQLException {
        List<Blog> blog = blogDAO.getAllBlogs(); 
        request.setAttribute("listBlog", blog);
        request.getRequestDispatcher("Blog.jsp").forward(request, response);
    }

    private void editForm(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException, SQLException {
    try {
        int id = Integer.parseInt(request.getParameter("id"));
        Blog blog = blogDAO.getBlogById(id);
        request.setAttribute("blog", blog);  
        request.getRequestDispatcher("editBlog.jsp").forward(request, response);
    } catch (NumberFormatException e) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid ID format.");
    }
}
      private void addForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forwarding the request to the addBlog.jsp page to show the form
        request.getRequestDispatcher("addBlog.jsp").forward(request, response);
    }


    private void deleteBlog(HttpServletRequest request, HttpServletResponse response) 
            throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        blogDAO.deleteBlog(id);
        response.sendRedirect("blog?action=list");
    }

    
   private void addBlog(HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        // Retrieve the userId from the session
        

        // Retrieve other blog data from the form
        String image = request.getParameter("image");
        String content = request.getParameter("content");
        String fullContent = request.getParameter("fullContent");

        // Create a new Blog object using the session's userId
        Blog blog = new Blog(1, image, content, fullContent);

        // Add the blog to the database
        blogDAO.addBlog(blog);

        // Redirect to the blog list page
        response.sendRedirect("blog?action=list");
    }


    private void updateBlog(HttpServletRequest request, HttpServletResponse response) 
            throws IOException, SQLException {
            String idParam = request.getParameter("id");
            String idParam2 = request.getParameter("user_id");
    // Kiểm tra giá trị id
    if (idParam2 == null ||idParam == null || idParam.isEmpty()) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid or missing user ID");
        return;
    }
// Lấy dữ liệu từ form
try {
        int blogId = Integer.parseInt(idParam);
        int userId = Integer.parseInt(idParam2);
        String image = request.getParameter("image");
        String content = request.getParameter("content");
        String fullContent = request.getParameter("fullContent");

        // Cập nhật Blog
        Blog blog = new Blog(blogId, userId, image, content, fullContent);
        blogDAO.updateBlog(blog);
        response.sendRedirect("blog?action=list");
    } catch (NumberFormatException e) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid user ID format");
    }
    }

    @Override
    public void destroy() {
        // Clean up resources nếu cần
    }
}

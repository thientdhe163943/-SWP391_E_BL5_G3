package Dao;

import DB.DBConnect;
import Model.Blog;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogDAO extends DBConnect {

    public void addBlog(Blog blog) throws SQLException {
        // Truy vấn thêm blog mà không bao gồm blogId (do nó tự tăng)
        String query = "INSERT INTO blogs (user_id, image, content,full_content) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1, blog.getUserId());
            ps.setString(2, blog.getImage());
            ps.setString(3, blog.getContent());
             ps.setString(4, blog.getFull_content());
            ps.executeUpdate();

            // Lấy blogId tự sinh ra
            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) {
                    blog.setBlogId(rs.getInt(1));  // Đặt blogId vừa tự sinh ra
                }
            }
        }
    }

    public void updateBlog(Blog blog) throws SQLException {
        String query = "UPDATE blogs SET user_id = ?, image = ?, content = ?,full_content=? WHERE blog_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, blog.getUserId());
            ps.setString(2, blog.getImage());
            ps.setString(3, blog.getContent());
             ps.setString(4, blog.getFull_content());
            ps.setInt(5, blog.getBlogId());
            ps.executeUpdate();
        }
    }

    public void deleteBlog(int blogId) throws SQLException {
        String query = "DELETE FROM blogs WHERE blog_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, blogId);
            ps.executeUpdate();
        }
    }

    public List<Blog> getAllBlogs() throws SQLException {
        List<Blog> blogs = new ArrayList<>();
        String query = "SELECT blog_id, user_id, [image], content,full_content FROM Blogs"; // Cập nhật tên cột chính xác
        try (PreparedStatement ps = connection.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                blogs.add(new Blog(
                        rs.getInt("blog_id"), // Sửa tên cột thành 'blog_id'
                        rs.getInt("user_id"), // Sửa tên cột thành 'user_id'
                        rs.getString("image"),
                        rs.getString("content"),
                        rs.getString("full_content")
                ));
            }
        }
        return blogs;
    }
    public Blog getBlogById(int id) throws SQLException {
    String query = "SELECT blog_id, user_id, [image], content,full_content FROM blogs WHERE blog_id = ?";
    try (
         PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setInt(1, id);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return new Blog(
                    rs.getInt("blog_id"),
                    rs.getInt("user_id"),
                    rs.getString("image"),
                    rs.getString("content"),
                    rs.getString("full_content")
                );
            }
        }
    }
    return null;
}


    public static void main(String[] args) throws SQLException {
        BlogDAO dao = new BlogDAO();
        Blog blog = new Blog(2, "qeqweqwe", "qưeqweqe", "qeqweqwewqeqeq");

        // Add the blog to the database
        dao.addBlog(blog);

        System.out.println(blog);
        
    }

}

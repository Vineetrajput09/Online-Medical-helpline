<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String phone = request.getParameter("phone");
    String age = request.getParameter("age");
    String Experiance = request.getParameter("Experiance");


    String url = "jdbc:mysql://localhost:3306/project";
    String dbUser = "root";
    String dbPassword = "Vineet@098";

    Connection conn = null;

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        conn = DriverManager.getConnection(url, dbUser, dbPassword);

        String sql = "UPDATE doctor SET password = ?, name = ?, phone = ?, Age = ?, Experiance = ? WHERE email = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, password);
        pstmt.setString(2, name);
        pstmt.setString(3, phone);
        pstmt.setString(4, age);
        pstmt.setString(5, Experiance);
        pstmt.setString(6, email);

        int result = pstmt.executeUpdate();

        if (result > 0) {
            out.println("Profile updated successfully.");
            response.sendRedirect("AfterD.jsp");
        } else {
            out.println("Error updating profile.");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

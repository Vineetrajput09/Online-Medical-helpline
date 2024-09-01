<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    String username = request.getParameter("email");
    String password = request.getParameter("password");

    boolean isValidUser = false;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Change if using a different database
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Vineet@098");

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Patient WHERE email=? AND password=?");
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            isValidUser = true;
            String p1 = rs.getString(3);
            session.setAttribute("user" , p1);
            String p2 = rs.getString(1);
            session.setAttribute("pemail" , p2);

            
        }
    } catch (Exception e) {
        e.printStackTrace();
    } 

    if (isValidUser) {
        out.println("Welcome, " + username + "!");
        response.sendRedirect("fetchSymptoms.jsp");
    } else {
        out.println("Invalid username or password.");
        //response.sendRedirect("login.html");
    }
%>
<a href="Index.html">Go to Home Page</a>

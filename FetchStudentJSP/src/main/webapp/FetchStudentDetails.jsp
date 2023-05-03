<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Students</title>
</head>
<body>
    <h1>All Students</h1>
    <table border="1">
        <tr>
            <th>Roll Number</th>
            <th>Name</th>
            <th>Course</th>
            <th>Semester</th>
        </tr>
        <% try {
            // Establishing database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University", "root", "root");

            // Query to fetch all students
            String query = "SELECT * FROM StudentsDetails";
            PreparedStatement pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            // Loop through the result set and display student details in a table
            while (rs.next()) {
                String rollNumber = rs.getString("roll_number");
                String name = rs.getString("name");
                String course = rs.getString("course");
                String semester = rs.getString("semester");
                out.println("<tr><td>" + rollNumber + "</td><td>" + name + "</td><td>" + course + "</td><td>" + semester + "</td></tr>");
            }

            // Closing resources
            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            out.println(e);
        } %>
    </table>
</body>
</html>

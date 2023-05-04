<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Employee data</title>
</head>
<body>
	<h1>Employee Details</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Salary</th>
			<th>Designation</th>
			<th>Contact</th>
		</tr>
        <% try {
            // Establishing database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee", "root", "root");

            // Query to fetch all students
            String query = "SELECT * FROM EMP";
            PreparedStatement pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            // Loop through the result set and display student details in a table
            while (rs.next()) {
                String emp_id = rs.getString("emp_id");
                String emp_name = rs.getString("emp_name");
                int emp_salary = rs.getInt("emp_salary");
                String emp_designation = rs.getString("emp_designation");
                double emp_contact = rs.getDouble("emp_contact");
                out.println("<tr><td>" + emp_id + "</td><td>" + emp_name + "</td><td>" + emp_salary + "</td><td>" + emp_designation + "</td><td>" + emp_contact + "</td></tr>");
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
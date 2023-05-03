package test_db1;

import java.sql.*;

public class SaveData {
	public static void main(String[] args) {
		try {
			int i = 0;
			//Class.forName("com.mysql.jdbc.Driver");
                                                
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/University","root","root");
			
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO Students(id, name, course) values (3, 'Unnati', 'B.Sc.')");
			i = 1;

			if(i==1)
				System.out.println("Data Saved");
			con.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}
}

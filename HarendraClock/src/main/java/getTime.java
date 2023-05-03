import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.io.PrintWriter;
import javax.servlet.*;

@WebServlet("/getTime")
public class getTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setIntHeader("Refresh", 1);

		Calendar calendar = new GregorianCalendar();
		PrintWriter pw = response.getWriter();
		
		int hour = calendar.get(calendar.HOUR);
		int min = calendar.get(calendar.MINUTE);
		int sec = calendar.get(calendar.SECOND);
		
		int ludo = 1000;
		pw.println("<h1>" + hour + ":" + min + ":" + sec + "</h1>");
		while(ludo<1200) {
			ludo++;
		}
		RequestDispatcher rd = request.getRequestDispatcher("yooo");
		rd.include(request, response);
	}
}

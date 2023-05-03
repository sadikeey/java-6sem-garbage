import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class RefreshPage
 */
@WebServlet("/RefreshPage")
public class RefreshPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setIntHeader("Refresh", 1);
		
		Calendar calendar = new GregorianCalendar();
		String am_pm;
		int hour = calendar.get(Calendar.HOUR);
		int min = calendar.get(Calendar.MINUTE);
		int sec = calendar.get(Calendar.SECOND);
		
		if(calendar.get(calendar.AM_PM) == 0) {
			am_pm = "AM";
		}else {
			am_pm = "PM";
		}
		
		String current_time = hour + ":" + min + ":" + sec + " " + am_pm;
		PrintWriter pw = response.getWriter();
		
		pw.println("<h1 align='center'>" + current_time + "</h1>");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Count")
public class Count extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int h;
	int m;
	int s;

	public Count() {
		super();
		h = 0;
		m = 0;
		s = 10;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter pw = response.getWriter();

		if (h == 0 && m == 0 && s == 0) {
			RequestDispatcher rd = request.getRequestDispatcher("timeup.html");
			rd.forward(request, response);
		} else {
			if (s != 0) {
				s--;
			} else if (m != 0) {
				m--;
				s = 59;
			} else {
				h--;
				m = 59;
				s = 59;
			}
			pw.println("<h1>Time remaining :" + h + ":" + m + ":" + s + "</h1>");
			response.setIntHeader("refresh", 1);
		}
	}
}
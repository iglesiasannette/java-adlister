import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/pageviewcounter")
public class PageViewCounterServlet extends HttpServlet {

    static int counter = 0;
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String output = String.format("This is response %d%n", counter++);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println(output);
    }

}
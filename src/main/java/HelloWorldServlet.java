import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {
//
//        @Override
//        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//            response.setContentType("text/html");
//            PrintWriter out = response.getWriter();
//            out.println("<h1>Hello, World!</h1>");
//        }


//    Bonus
//
//    Make the page say "Hello, <name>!" if name is passed as part of the query string
//            (e.g. /hello?name=codeup), otherwise default to "Hello, World!".
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            String name = request.getParameter("name");
//            if (name == null)
//                name = "World";
//            response.setContentType("text/html");
//            PrintWriter out = response.getWriter();
//            out.println("<h1>Hello, " + name + "!</h1>");

        if (name == null) {
            name = "name";
        } else if (name.equals("bgates")) {
            response.sendRedirect("https://microsoft.com");
            return;
        }

        request.setAttribute("user", name);
        request.getRequestDispatcher("/hello.jsp").forward(request, response);

    }
}




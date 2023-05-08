package calc.calcapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "Calculator",
        value = "/calculator")
public class Controllers extends HttpServlet {
    private void dispatcherJSP(HttpServletRequest request, HttpServletResponse response, String url) {
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Call Post");
        String url = "WEB-INF/result.jsp";
        float first = 0, second = 0, result = 0;
        String operator = request.getParameter("operator");
        try {
            first = Float.parseFloat(request.getParameter("first"));
            second = Float.parseFloat(request.getParameter("second"));
            if (operator.equalsIgnoreCase("+") && second == 0) {
                request.setAttribute("invalid", "Div by 0");
            } else {
                switch (operator) {
                    case "+":
                        result = first + second;
                        break;
                    case "-":
                        result = first - second;
                        break;
                    case "*":
                        result = first * second;
                        break;
                    case "/":
                        result = first / second;
                        break;
                }
                request.setAttribute("result", result);
            }
        } catch (NumberFormatException errException) {
            request.setAttribute("invalid", "Invalid Value");
        }
        dispatcherJSP(request, response, url);
    }
}
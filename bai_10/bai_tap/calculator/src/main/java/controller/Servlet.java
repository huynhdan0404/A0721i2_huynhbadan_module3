package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet",urlPatterns = {"","/calculator"})
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String calculator = request.getParameter("calculator");
        switch (calculator){
            case "addition":
                addition(request,response);
                break;
            case "Subtraction":
                subtraction(request,response);
                break;
            case "multiplication":
                multiplication(request,response);
                break;
            case "division":
                division(request,response);
                break;
        }
    }

    private void division(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int first_operrand = Integer.parseInt(request.getParameter("first-operrand"));
        int second_operand = Integer.parseInt(request.getParameter("second-operand"));
        int result = first_operrand/second_operand;
        request.setAttribute("result",result);
        request.setAttribute("first_operrand",first_operrand);
        request.setAttribute("second_operand",second_operand);
        request.getRequestDispatcher("/calculator.jsp").forward(request,response);
    }

    private void multiplication(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int first_operrand = Integer.parseInt(request.getParameter("first-operrand"));
        int second_operand = Integer.parseInt(request.getParameter("second-operand"));
        int result = first_operrand * second_operand;
        request.setAttribute("result",result);
        request.setAttribute("first_operrand",first_operrand);
        request.setAttribute("second_operand",second_operand);
        request.getRequestDispatcher("/calculator.jsp").forward(request,response);
    }

    private void subtraction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int first_operrand = Integer.parseInt(request.getParameter("first-operrand"));
        int second_operand = Integer.parseInt(request.getParameter("second-operand"));
        int result = first_operrand - second_operand;
        request.setAttribute("result",result);
        request.setAttribute("first_operrand",first_operrand);
        request.setAttribute("second_operand",second_operand);
        request.getRequestDispatcher("/calculator.jsp").forward(request,response);
    }

    private void addition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int first_operrand = Integer.parseInt(request.getParameter("first-operrand"));
        int second_operand = Integer.parseInt(request.getParameter("second-operand"));
        int result = first_operrand + second_operand;
        request.setAttribute("result",result);
        request.setAttribute("first_operrand",first_operrand);
        request.setAttribute("second_operand",second_operand);
        request.getRequestDispatcher("/calculator.jsp").forward(request,response);
    }
}

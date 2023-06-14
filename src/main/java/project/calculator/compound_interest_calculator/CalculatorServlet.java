package project.calculator.compound_interest_calculator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/")
public class CalculatorServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String principleAmount = request.getParameter("principle-amount");
        String interestPercentage = request.getParameter("interest");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compounding-period");
        String error;

        if (principleAmount.isBlank() || interestPercentage.isBlank() || years.isBlank() || compoundingPeriod.isBlank()){
            error = "One or more of the input boxes are blank. Try again.";
            request.setAttribute("error", error);
        }
        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    }

}

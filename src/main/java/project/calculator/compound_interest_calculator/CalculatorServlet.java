package project.calculator.compound_interest_calculator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"/", ""})
public class CalculatorServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String principalAmount = request.getParameter("principal-amount");
        String interestPercentage = request.getParameter("interest");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compounding-period");
        String error;

        if (principalAmount.isBlank() || interestPercentage.isBlank() || years.isBlank() || compoundingPeriod.isBlank()){
            error = "One or more of the input boxes are blank. Try again.";
            request.setAttribute("error", error);
        } else {
            double result = Utils.calculateCompoundInterest(Double.parseDouble(principalAmount), Double.parseDouble(interestPercentage)/100, Integer.parseInt(years), Integer.parseInt(compoundingPeriod));
            request.setAttribute("result", result);
        }
        request.setAttribute("principal", principalAmount);
        request.setAttribute("interest", interestPercentage);
        request.setAttribute("years", years);
        request.setAttribute("compoundingPeriod", compoundingPeriod);

        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
    }

}

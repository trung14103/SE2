package Controller;

import Model.GeneralData;
import Service.GeneralDataService;
import Service.GeneralDataServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GeneralDataService dataService = new GeneralDataServiceImpl();
        List<GeneralData> vnData = dataService.findCityOfVietnam();

        request.setAttribute("vnData", vnData);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("statistics.jsp");
        requestDispatcher.forward(request, response);
    }
}

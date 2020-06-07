package Controller;

import Model.GeneralData;
import Response.TotalData;
import Service.GeneralDataService;
import Service.GeneralDataServiceImpl;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GetTotalDataServlet", urlPatterns = {"/totalData"})
public class GetTotalDataServlet extends HttpServlet {
    private GeneralDataService generalDataService;

    public void init() throws ServletException {
        generalDataService = new GeneralDataServiceImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TotalData> totalDataList = generalDataService.getAllTotalData();

        Gson gson = new Gson();

        String jsonString = gson.toJson(totalDataList);

        response.setContentType("application/json");

        response.getWriter().write(jsonString);
    }
}

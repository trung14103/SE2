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

@WebServlet("/data")
public class GetDataController extends HttpServlet {
    private GeneralDataService generalDataService;

    public void init() {
        generalDataService = new GeneralDataServiceImpl();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<GeneralData> generalDataList = generalDataService.findCountryGreater5000();

        Gson gson = new Gson();

        String jsonString = gson.toJson(generalDataList);

        response.setContentType("application/json");

        response.getWriter().write(jsonString);
    }
}

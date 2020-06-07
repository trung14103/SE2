package Controller;

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

@WebServlet("/totalData")
public class GetDataController extends HttpServlet {
    private GeneralDataService generalDataService;

    public void innit() {
        generalDataService = new GeneralDataServiceImpl();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<TotalData> listTotalData = generalDataService.getAllTotalDat();

        Gson gson = new Gson();

        String jsonString = gson.toJson(listTotalData);

        response.setContentType("application/json");

        response.getWriter().write(jsonString);
    }
}

package Utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import java.util.List;

public class JsonConverter {
    private final Gson gson;

    public JsonConverter() {

        gson = new GsonBuilder().create();
    }

    public JsonObject convertToJson(List objectList) {

        JsonArray jarray = gson.toJsonTree(objectList).getAsJsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cities", jarray);

        return jsonObject;
    }
}

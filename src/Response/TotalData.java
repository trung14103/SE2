package Response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TotalData {
    private Date dayItem;

    private int totalInfected;

    private int totalRecovered;

    private int totalDeath;

    private int totalCritical;
}

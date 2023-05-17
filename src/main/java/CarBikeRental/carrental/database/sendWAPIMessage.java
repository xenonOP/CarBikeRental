package CarBikeRental.carrental.database;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
public class sendWAPIMessage {
    static String API_KEY = "77396dbeaa2440e69895d44334bc2650";
    public static void sendmessage(String PhoneNumber, String message)
    {
        RestTemplate restTemplate = new RestTemplate();
        String url = "http://wapi.tagdigitalsolutions.com/wapp/api/send?apikey="+API_KEY+"&mobile="+PhoneNumber+"&msg="+message;
        HttpHeaders headers = new HttpHeaders();
        HttpEntity<String> entity = new HttpEntity<>("", headers);
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
    }
}
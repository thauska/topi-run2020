/**
* @author thauska || thayanacmamore
*/

public class GetAddressOutboundService {

  ZipCodeAddressTransformer transformer;

  public GetAddressOutboundService () {
    transformer = new ZipCodeAddressTransformer();
  }

  public ZipCodeAddress findAddress(String zipCode) {

    return transformer.toAddress( findViaCepAddress(zipCode) );

  }

  private ViaCepAddressResponse findViaCepAddress (String zipCode) {

    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://viacep.com.br/ws/' + zipCode + '/json/');
    //request.setEndpoint('https://run.mocky.io/v3/ac5ba597-553d-4685-b1c3-d5a2a83d1955');
    request.setMethod('GET');
    request.setHeader('Content-Type', 'application/json');

    Http http = new Http();
    HttpResponse response = http.send(request);

    String payload = response.getBody();

    System.debug('Status ----' + response.getStatus());
    System.debug('Status Code' + response.getStatusCode());

    System.debug(payload);

    if (response.getStatusCode() >= 400) {
      throw new CalloutException('service unavailable');
    }

    return ( ViaCepAddressResponse ) JSON.deserialize( payload, ViaCepAddressResponse.class );

  }

}

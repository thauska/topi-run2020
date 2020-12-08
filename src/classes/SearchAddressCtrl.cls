/**
 * @author: thauska
 */

public class SearchAddressCtrl {

  @AuraEnabled(cacheable=true)
  public static ZipCodeAddress searchAddress(String zipCode) {

    GetAddressOutboundService service = new GetAddressOutboundService();

    return service.findAddress(zipCode);

  }

}

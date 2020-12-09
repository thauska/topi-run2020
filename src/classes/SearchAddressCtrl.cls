/**
 * @author: thauska
 */

public class SearchAddressCtrl {

  @AuraEnabled(cacheable=true)
  public static ZipCodeAddress searchAddress(String zipCode) {

    GetAddressOutboundService service = new GetAddressOutboundService();

    ZipCodeAddress address;

    try {
      address = service.findAddress(zipCode);
    } catch (Exception e ) {
      throw new AuraException (e.getMessage());
    }

    return address;

  }

}

/**
* @author thauska || thayanacmamore
*/

@isTest
public class AccountFixtureFactory {

  public static Account newAccount (String name, String documentNumber) {

    return new Account ( Name = name, DocumentNumber__c = documentNumber );
    
  }

  public static Account createAccount (String name, String documentNumber) {

    return createAccount ( newAccount(name, documentNumber) );

  }

  
  public static Account createAccountByCategoryAndAnnualRevenue(String name, String category, Decimal annualRevenue) {

    return new Account ( Name = name, Category__c = category, AnnualRevenue = annualRevenue );
    
  }

  public static Account createAccount ( Account account ) {

    insert account;
    return account;

  }

}
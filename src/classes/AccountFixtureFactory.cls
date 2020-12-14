/**
* @author thauska || thayanacmamore
*/

@isTest
public class AccountFixtureFactory {

  public static Account newAccount ( String name, String documentNumber, String category, City__c city, Cnae__c cnae ) {

    Account account = newAccount (name, documentNumber, category);
    account.BillingCity__c = city.Id;
    account.BillingCity__r = city;
    account.Cnae__c = cnae.Id;
    account.Cnae__r = cnae;

    return account;

  }

  public static Account newAccount ( String name, String documentNumber, String category ) {

    return new Account ( Name = name, DocumentNumber__c = documentNumber, Category__c = category);

  }

  public static Account createAccount ( String name, String documentNumber, String category ) {

    return createAccount ( newAccount(name, documentNumber, category) );

  }

  public static Account createAccount ( Account account ) {
    insert account;
    return account;
  }


  public static Account createAccountByCategoryAndAnnualRevenue(String name, String category, Decimal annualRevenue) {

     return new Account ( Name = name, Category__c = category, AnnualRevenue = annualRevenue );

  }

}

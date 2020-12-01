@isTest
public class AccountFilterTest {

  // Prática BDD - Behavor Driven Design: Given When Then
  @isTest
  static void filterAccountsByDocumentNumberTest () {

    List<Account> accounts = new List<Account>();

    accounts.add (AccountFixtureFactory.newAccount('Teste 03', '86473518002') );
    accounts.add (AccountFixtureFactory.newAccount('Teste 04', '86473518002') );
    insert accounts;
    
    AccountFilter filter = new AccountFilter();

    //validação
    List<Account> filteredAccounts = filter.filterByChangedDocumentNumber(accounts, null);

    System.assertEquals(accounts.size(), filteredAccounts.size());
    
    filteredAccounts = filter.filterByChangedDocumentNumber(accounts, new Map<Id,Account>());
    
    System.assertEquals(accounts.size(), filteredAccounts.size());
    
    Map<Id,Account> oldAccounts = new Map<Id,Account> (accounts);
    
    Account changedAccount = accounts.get(0).clone(true, true, true, true);
    changedAccount.DocumentNumber__c = 'X';
    oldAccounts.put(changedAccount.Id, changedAccount);
    
    filteredAccounts = filter.filterByChangedDocumentNumber(accounts, oldAccounts );

    System.assertNotEquals(accounts.size(), filteredAccounts.size());
    System.assert(filteredAccounts.size() == 1);

    accounts = new List<Account>();
    accounts.add (new Account (Name = 'Teste 01'));
    accounts.add (new Account (Name = 'Teste 02'));

    filteredAccounts = filter.filterByChangedDocumentNumber(accounts, null);
    
    System.assert(filteredAccounts.isEmpty());

  }

  @isTest
  static void filterAccountsByCategoryAndAnnualRevenue () {

    List<Account> accounts = new List<Account>();

    accounts.add (new Account(Name = 'teste', Category__c = 'Premium', AnnualRevenue = 1000100 ));
    accounts.add (new Account(Name = 'teste', Category__c = 'Premium', AnnualRevenue = 600000 ));
    
    AccountFilter filter = new AccountFilter();

    List<Account> filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, null, null);
    
    System.assertNotEquals(accounts.size(), filteredAccounts.size());
    System.assert(filteredAccounts.size() == 0);
    
    filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, 'Standard', null);
    System.assertNotEquals(accounts.size(), filteredAccounts.size() );
    System.assert(filteredAccounts.size() == 0);
    
    filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, 'Premium', 150000);
    System.assertNotEquals(accounts.size(), filteredAccounts.size() );
    System.assert(filteredAccounts.size() == 0);
    
    filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, 'Premium', 1500000);
    System.assertEquals(accounts.size(), filteredAccounts.size() );

  }

}
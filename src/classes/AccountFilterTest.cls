/**
* @author thauska || thayanacmamore
*/

@isTest
public class AccountFilterTest {

  // Prática BDD - Behavor Driven Design: Given When Then
  @isTest
  static void filterAccountsByDocumentNumberTest () {

    List<Account> accounts = new List<Account> {
      AccountFixtureFactory.newAccount('Teste 03', '92708838253', 'Premium')
    };

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

    filteredAccounts = filter.filterByChangedDocumentNumber(accounts, null);

    System.assert(filteredAccounts.isEmpty(), 'field is empty');

  }

  @isTest
  static void filterAccountsByCategoryAndAnnualRevenue () {

    List<Account> accounts = new List<Account>();

    accounts.add ( AccountFixtureFactory.createAccountByCategoryAndAnnualRevenue('teste', 'Premium', 1001000));
    accounts.add (AccountFixtureFactory.createAccountByCategoryAndAnnualRevenue('teste', 'Standard', 600000 ));

    AccountFilter filter = new AccountFilter();

    List<Account> filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, null, null);

    System.assertNotEquals(accounts.size(), filteredAccounts.size());
    System.assert(filteredAccounts.size() == 0);

    filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, 'Standard', null);
    System.assertNotEquals(accounts.size(), filteredAccounts.size() );
    System.assert(filteredAccounts.size() == 0);

    filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, 'Premium', 150000);
    System.assertNotEquals(accounts.size(), filteredAccounts.size() );

    filteredAccounts =  filter.filterByCategoryAndAnnualRevenue(accounts, 'Premium', 1500000);
    System.assertNotEquals(accounts.size(), filteredAccounts.size() );
    System.assert(filteredAccounts.size() == 0);

  }

}

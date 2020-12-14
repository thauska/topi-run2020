/**
* @author thauska || thayanacmamore
*/

@isTest
public class AccountRepositoryTest {
  // BDD - Given When Then (Dado Quando Então)
  @isTest
  public static void givenAccountNameWhenFindThenReturnOneAccount() {

    Account account = AccountFixtureFactory.createAccount('Jose', '92708838253', 'Premium');

    AccountRepository repository = new AccountRepository();

    List<Account> accounts = repository.findByName('Jose');

    System.assert( !accounts.isEmpty() );
    System.assert( accounts.size() == 1 );
    System.assertEquals(account.Id, accounts.get(0).Id);

  }

  @isTest
  public static void givenAccountNameWhenFindReturnOneAccountWithContacts() {
    Account account = AccountFixtureFactory.createAccount('Jose', '92708838253', 'Premium');

    AccountRepository repository = new AccountRepository();

    List<Account> accounts = repository.findWithContactsByName('Jose');

    System.assert( !accounts.isEmpty() );
    System.assert( accounts.size() == 1 );
    System.assertEquals(account.Id, accounts.get(0).Id);

  }

  @isTest
  public static void givenAccountInfoThenCreateAccount() {

    Account account = AccountFixtureFactory.createAccount('Jose', '92708838253', 'Premium');

    AccountRepository repository = new AccountRepository();

    List<Account> accounts = repository.create(new List<Account>());

    insert accounts;

    System.assert( !accounts.isEmpty() );
    System.assert( accounts.size() == 1 );
    System.assertEquals(account.Id, accounts.get(0).Id);


  }

}

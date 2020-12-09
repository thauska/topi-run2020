/**
* @author thauska || thayanacmamore
*/

@isTest
public class AccountRepositoryTest {
  // BDD - Given When Then (Dado Quando Então)
  @isTest
  public static void  givenAccountNameWhenFindThenReturnOneAccount() {

    AccountRepository repository = new AccountRepository();
    List<Account> accounts = repository.findByName('Jose');

    System.assert( !accounts.isEmpty() );
    System.assert( accounts.size() == 1 );

  }

}

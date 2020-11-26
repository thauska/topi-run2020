public virtual with sharing class AccountTH extends TriggerHandler {
  
  List<Account> newAccounts;
    
  Map<Id,Account> oldAccounts;

  public AccountTH () {
    this ( (List<Account> ) Trigger.new, (Map<Id,Account>) Trigger.oldMap );
  }

  public AccountTH (List<Account> newAccounts, Map<Id,Account> oldAccounts) {
    this.newAccounts = newAccounts;
    this.oldAccounts = oldAccounts;
  }

  virtual
  override
  public void afterInsert() {

    System.debug( 'Trigger de Conta acionada ' + Trigger.operationType );
    System.debug( JSON.serialize ( oldAccounts ));
        
  }

  virtual
  override
  public void afterUpdate() {

    System.debug( 'Trigger de Conta acionada ' + Trigger.operationType );
    System.debug( JSON.serialize ( newAccounts ));
    System.debug( JSON.serialize ( oldAccounts ));

  }

}
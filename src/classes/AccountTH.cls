/**
 * @author thauska
 */

public virtual with sharing class AccountTH extends TriggerHandler {
  
  List<Account> newAccounts;
    
  Map<Id,Account> oldAccounts;

  AccountFilter filter;

  AccountValidator validator;

  AccountEventEnricher accountEventEnricher;

  public AccountTH () {
    this ( (List<Account> ) Trigger.new, (Map<Id,Account>) Trigger.oldMap );
  }

  public AccountTH (List<Account> newAccounts, Map<Id,Account> oldAccounts) {
    this.newAccounts = newAccounts;
    this.oldAccounts = oldAccounts;

    this.filter = new AccountFilter();
    this.validator = new AccountValidator();
    this.accountEventEnricher = new AccountEventEnricher();
  }

  override
  public void beforeInsert() {
    validateDocumentNumber();
  }

  override
  public void beforeUpdate() {
    validateDocumentNumber();
  }

  override
  public void afterInsert() {
    createNewAccountPremiumScheduleEvent();
  }

  virtual
  public void validateDocumentNumber () {

    List<Account> filteredAccount = this.filter.filterByChangedDocumentNumber(newAccounts, oldAccounts);

    this.validator.validateDocumentNumber(filteredAccount);

  }

  virtual
  public void createNewAccountPremiumScheduleEvent () {
    List<Account> premiumAccounts = this.filter.filterByCategoryAndAnnualRevenue(newAccounts, 'Premium', 1000000);

    this.accountEventEnricher.createNewEventForPremiumAccount(premiumAccounts);
  }

}
trigger Account on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    System.debug( 'Trigger de Conta acionada' + Trigger.operationType );
    
    List<Account> newAccounts = (List<Account>) Trigger.new;
    
    Map<Id,Account> oldAccounts = (Map<Id,Account>) Trigger.oldMap;

    Account account = newAccounts.get(0);
    if ( oldAccounts.containsKey( account.Id ) ) {
      Account oldAccount = oldAccounts.get( account.Id );
    }
    
    System.debug( 'New Accounts' );
    System.debug ( JSON.serialize ( newAccounts ));

    if( oldAccounts != null && !oldAccounts.isEmpty() ) {
      
      System.debug( 'Old Accounts' );
      System.debug ( JSON.serialize ( oldAccounts ));

    }

    // Filtro
    // Validação
    // Enriquecimento
    // Chamada Externa - Publicação

}
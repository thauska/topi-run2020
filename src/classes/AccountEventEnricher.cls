/**
 * @author thauska
 */

public virtual class AccountEventEnricher {
  EventRepository eventRepository;

  public AccountEventEnricher() {
    eventRepository = new EventRepository();
  }

  public List<Event> createNewEventForPremiumAccount( List<Account> premiumAccounts ) {
    List<Event> events = new List<Event>();

    for (Account account : premiumAccounts) {
      Event event = new Event();
      event.Description = 'Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium';
      event.Subject = 'Apresentação institucional dos produtos Premium';
      event.StartDateTime = Datetime.now().addDays(1);
      event.EndDateTime = Datetime.now().addDays(1).addHours(1);
      event.WhatId = account.Id;
      event.ContactType__c = 'Telefônico';

      events.add(event);
    }

    return eventRepository.create(events);
  }

}
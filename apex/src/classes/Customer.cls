// Convenção: NomeDaClasse

/*
<public|private|global> [modificadores] class <NomeDaClasse> {
  code...
}
*/
public virtual class Customer {

  public Decimal amount;
  protected Double descount;
  String name;
  String status;
  CustomerType type;

  String[] emails;
  List<Contact> contacts;
  Set<Contact> createdContacts;

  //intenções em Map: indexando ou agrupando
  // Exemplo de indexação
  Map<String, Contact> regionContacts = new Map<String,Contact> {
    'SP' => new Contact (FirstName = 'Thayana'),
    'SP' => new Contact (FirstName = 'Débora')
  };

  // Exemplo de agrupamento
  Map<String, List<Contact>> contactsByRegion = new Map<String, List<Contact>> {
    'SP' => new List<Contact> { new Contact (FirstName = 'Thayana')},
    'SP' => new List<Contact> {new Contact (FirstName = 'Débora')}
  };

  public List<Contact> filterContactsByRegion () {
    List<Contact> contacts = new List<Contact>();

    for (Contact contact : this.contacts) {
      if (contact.Name == 'XXX') {
        contacts.add(contact);
      }
    }

    return contacts;
  }

  /* 
    [modificadores] <Tipo de Retorno> nomeDoMetodo
    [public | protected | private | default]
  */
  virtual
  public void save () {

    String value = '';

  }

  enum CustomerType {
    PRIME, STANDARD, PREMIUM
  }

}
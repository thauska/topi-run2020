/**
 * @author thauska || thayanacmamore
 */

public with sharing class EventRepository {

  virtual
  public List<Event> create (List<Event> events) {
    insert events;
    return events;
  }

}
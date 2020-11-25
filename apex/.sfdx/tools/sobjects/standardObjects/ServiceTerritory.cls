// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class ServiceTerritory {
    global Address Address;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<ServiceTerritory> ChildServiceTerritories;
    global String City;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global String Country;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<ServiceTerritory> DescendantTerritories;
    global String Description;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ServiceTerritoryFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global String GeocodeAccuracy;
    global List<ServiceTerritoryHistory> Histories;
    global Id Id;
    global Boolean IsActive;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Double Latitude;
    global Double Longitude;
    global String Name;
    global OperatingHours OperatingHours;
    global Id OperatingHoursId;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<ServiceTerritoryChangeEvent> ParentTerritory;
    global Id ParentTerritoryId;
    global String PostalCode;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<FlowRecordRelation> RelatedRecord;
    global List<ServiceAppointment> ServiceAppointments;
    global List<ServiceTerritoryMember> ServiceResources;
    global List<ServiceTerritoryWorkType> ServiceTerritories;
    global List<ServiceTerritoryMemberChangeEvent> ServiceTerritory;
    global String State;
    global String Street;
    global Datetime SystemModstamp;
    global List<ServiceTerritoryChangeEvent> TopLevelTerritory;
    global Id TopLevelTerritoryId;
    global List<TopicAssignment> TopicAssignments;
    global Double TypicalInTerritoryTravelTime;

    global ServiceTerritory () 
    {
    }
}
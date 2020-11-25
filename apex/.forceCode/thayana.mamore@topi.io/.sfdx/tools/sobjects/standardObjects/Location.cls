// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Location {
    global List<ActivityHistory> ActivityHistories;
    global List<AssociatedLocation> AssociatedLocations;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<ReturnOrderLineItemChangeEvent> DestinationLocation;
    global List<ReturnOrderLineItem> DestinationReturnOrderLineItems;
    global List<ReturnOrder> DestinationReturnOrders;
    global List<EmailMessage> Emails;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<LocationFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global List<LocationHistory> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global Boolean IsInventoryLocation;
    global Boolean IsMobile;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global List<ServiceResourceChangeEvent> Location;
    global String LocationType;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<EventRelationChangeEvent> Relation;
    global List<LocationChangeEvent> RootLocation;
    global Id RootLocationId;
    global List<ServiceResource> ServiceResources;
    global List<ReturnOrderLineItemChangeEvent> SourceLocation;
    global List<ReturnOrderLineItem> SourceReturnOrderLineItems;
    global List<ReturnOrder> SourceReturnOrders;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<TaskChangeEvent> What;

    global Location () 
    {
    }
}
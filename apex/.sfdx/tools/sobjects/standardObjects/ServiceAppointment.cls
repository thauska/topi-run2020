// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class ServiceAppointment {
    global Account Account;
    global Id AccountId;
    global List<ActivityHistory> ActivityHistories;
    global Double ActualDuration;
    global Datetime ActualEndTime;
    global Datetime ActualStartTime;
    global String AdditionalInformation;
    global Address Address;
    global String AppointmentNumber;
    global String AppointmentType;
    global Datetime ArrivalWindowEndTime;
    global Datetime ArrivalWindowStartTime;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global String CancellationReason;
    global String City;
    global List<CombinedAttachment> CombinedAttachments;
    global String Comments;
    global Contact Contact;
    global Id ContactId;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global String Country;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Description;
    global Datetime DueDate;
    global Double Duration;
    global Double DurationInMinutes;
    global String DurationType;
    global Datetime EarliestStartTime;
    global String Email;
    global List<EmailMessage> Emails;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ServiceAppointmentFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global String GeocodeAccuracy;
    global List<ServiceAppointmentHistory> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Double Latitude;
    global Double Longitude;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global SObject ParentRecord;
    global Id ParentRecordId;
    global String ParentRecordStatusCategory;
    global String ParentRecordType;
    global String Phone;
    global String PostalCode;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<EventRelationChangeEvent> Relation;
    global Datetime SchedEndTime;
    global Datetime SchedStartTime;
    global List<EventChangeEvent> ServiceAppointment;
    global String ServiceNote;
    global List<AssignedResource> ServiceResources;
    global ServiceTerritory ServiceTerritory;
    global Id ServiceTerritoryId;
    global String State;
    global String Status;
    global String StatusCategory;
    global String Street;
    global String Subject;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global List<TaskChangeEvent> What;
    global WorkType WorkType;
    global Id WorkTypeId;

    global ServiceAppointment () 
    {
    }
}
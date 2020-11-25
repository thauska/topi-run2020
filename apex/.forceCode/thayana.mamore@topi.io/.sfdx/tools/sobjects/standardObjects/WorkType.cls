// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class WorkType {
    global List<AttachedContentDocument> AttachedContentDocuments;
    global Integer BlockTimeAfterAppointment;
    global String BlockTimeAfterUnit;
    global Integer BlockTimeBeforeAppointment;
    global String BlockTimeBeforeUnit;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String DefaultAppointmentType;
    global String Description;
    global Double DurationInMinutes;
    global String DurationType;
    global Double EstimatedDuration;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<WorkTypeFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global List<WorkTypeHistory> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Name;
    global OperatingHours OperatingHours;
    global Id OperatingHoursId;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<FlowRecordRelation> RelatedRecord;
    global List<SkillRequirement> SkillRequirements;
    global Datetime SystemModstamp;
    global String TimeFrameEndUnit;
    global String TimeFrameStartUnit;
    global Integer TimeframeEnd;
    global Integer TimeframeStart;
    global List<ServiceAppointmentChangeEvent> WorkType;
    global List<WorkTypeGroupMember> WorkTypeGroupMembers;
    global List<ServiceTerritoryWorkType> WorkTypes;

    global WorkType () 
    {
    }
}
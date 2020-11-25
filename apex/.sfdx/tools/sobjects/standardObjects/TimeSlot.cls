// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class TimeSlot {
    global List<FlowExecutionErrorEvent> ContextRecord;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String DayOfWeek;
    global Time EndTime;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Integer MaxAppointments;
    global OperatingHours OperatingHours;
    global Id OperatingHoursId;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<FlowRecordRelation> RelatedRecord;
    global Time StartTime;
    global Datetime SystemModstamp;
    global String TimeSlotNumber;
    global String Type;
    global WorkTypeGroup WorkTypeGroup;
    global Id WorkTypeGroupId;

    global TimeSlot () 
    {
    }
}
// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Invoice {
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global Contact BillToContact;
    global Id BillToContactId;
    global Account BillingAccount;
    global Id BillingAccountId;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Description;
    global String DocumentNumber;
    global Date DueDate;
    global List<EmailMessage> Emails;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global Id Id;
    global Date InvoiceDate;
    global List<InvoiceLine> InvoiceLines;
    global String InvoiceNumber;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<PaymentLineInvoice> PaymentLinesInvoice;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global Order ReferenceEntity;
    global Id ReferenceEntityId;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<EventRelationChangeEvent> Relation;
    global String Status;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global Decimal TotalAdjustmentAmount;
    global Decimal TotalAmount;
    global Decimal TotalAmountWithTax;
    global Decimal TotalChargeAmount;
    global Decimal TotalTaxAmount;
    global List<TaskChangeEvent> What;

    global Invoice () 
    {
    }
}
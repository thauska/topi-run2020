// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class InvoiceLine {
    global Decimal AdjustmentAmount;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global Decimal ChargeAmount;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Description;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global OrderItem GroupReferenceEntityItem;
    global Id GroupReferenceEntityItemId;
    global Id Id;
    global Invoice Invoice;
    global Id InvoiceId;
    global Date InvoiceLineEndDate;
    global Date InvoiceLineStartDate;
    global List<InvoiceLine> InvoiceLines;
    global String InvoiceStatus;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String Name;
    global List<FeedItem> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global Product2 Product2;
    global Id Product2Id;
    global Double Quantity;
    global OrderItem ReferenceEntityItem;
    global Id ReferenceEntityItemId;
    global String ReferenceEntityItemType;
    global String ReferenceEntityItemTypeCode;
    global InvoiceLine RelatedLine;
    global Id RelatedLineId;
    global List<FlowRecordRelation> RelatedRecord;
    global Datetime SystemModstamp;
    global Decimal TaxAmount;
    global String TaxCode;
    global Date TaxEffectiveDate;
    global String TaxName;
    global Double TaxRate;
    global String Type;
    global Decimal UnitPrice;

    global InvoiceLine () 
    {
    }
}
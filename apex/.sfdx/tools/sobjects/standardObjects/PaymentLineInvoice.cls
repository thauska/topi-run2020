// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class PaymentLineInvoice {
    global Decimal Amount;
    global Datetime AppliedDate;
    global Account AssociatedAccount;
    global Id AssociatedAccountId;
    global PaymentLineInvoice AssociatedPaymentLine;
    global Id AssociatedPaymentLineId;
    global List<PaymentLineInvoice> AssociatedPaymentLines;
    global String Comments;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Datetime Date;
    global Datetime EffectiveDate;
    global Decimal EffectiveImpactAmount;
    global String HasBeenUnapplied;
    global Id Id;
    global Decimal ImpactAmount;
    global Invoice Invoice;
    global Id InvoiceId;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Payment Payment;
    global Decimal PaymentBalance;
    global Id PaymentId;
    global String PaymentLineInvoiceNumber;
    global List<FlowRecordRelation> RelatedRecord;
    global Datetime SystemModstamp;
    global String Type;
    global Datetime UnappliedDate;

    global PaymentLineInvoice () 
    {
    }
}
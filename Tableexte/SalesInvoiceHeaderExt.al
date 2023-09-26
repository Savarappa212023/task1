tableextension 50002 SalesInvoiceHeader extends "Sales Invoice Header"
{
    fields
    {
        field(50000; ExternalDocNo; code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    var
        myInt: Integer;
}
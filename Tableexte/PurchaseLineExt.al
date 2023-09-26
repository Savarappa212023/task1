tableextension 50005 purchaseline extends "Purchase Line"
{
    fields
    {
       field(50000; M; Blob)
       {
        DataClassification = ToBeClassified;
       } // Add changes to table fields here
    }
    
    var
        myInt: Integer;
}
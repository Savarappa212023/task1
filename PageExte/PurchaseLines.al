pageextension 50004 Purchaseline extends "Purchase Lines"
{
    layout
    {
       addafter(Quantity)
       {
      /*  field(50001; ; text[100])
        {
            DataClassification = ToBeClassified;
        }*/
       }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}
pageextension 50018 Itemext extends "Item List"
{
    layout
    {
        addafter("Assembly BOM")
        {

            field(Item_Cost; Rec.Item_Cost)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Item_Cost field.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
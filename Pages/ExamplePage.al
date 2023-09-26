page 50008 "My page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                }
                field(VendorName; Rec.VendorName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VendorName field.';
                }




            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
    var
        VendorName1: Text;

    /* trigger OnAfterGetRecord()
     var
         vendor: Record Vendor;
     begin
         if vendor.get(Rec."No.") then
             VendorName1 := vendor.Name;
     end;*/

}
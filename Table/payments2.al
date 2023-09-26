table 50002 "Payment Terms Conditions"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Line Type"; Option)
        {
            OptionMembers = ,"AMC Period","Billing & Installation Address","Billing & Delivery Address","Billing Address","Contract Period","Contract Value",Completion,"Completion Timelines","Delivery & Completion",Delivery,"Delivery Address","Delivery & Installation","Liquidated Damages",Maintenance,"ManPower Requirement","Nature Of Work",Others,Payment,Packing,"Payment Terms","Shifting Date","Shipping Address","Support Period",Taxes,"Terms & Conditions","Total AMC Value Yearly","Total Contract Value",Warranty,"Delivery Address2","Event Date","Courier Charges";
            OptionCaption = ',AMC Period,Billing & Installation Address,Billing & Delivery Address,Billing Address,Contract Period,Contract Value,Completion,Completion Timelines,Delivery & Completion,Delivery,Delivery Address,Delivery & Installation,Liquidated Damages,Maintenance,ManPower Requirement,Nature Of Work,Others,Payment,Packing,Payment Terms,Shifting Date,Shipping Address,Support Period,Taxes,Terms & Conditions,Total AMC Value Yearly,Total Contract Value,Warranty,Delivery Address2,Event Date,Courier Charges';
        }
        field(3; Description; Text[500])
        {

        }
        field(4; "Order Type"; Enum "OrderType")
        {
            DataClassification = ToBeClassified;
        }
        field(5; Sequence; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        PaymentTerms: Record "Payment Terms Conditions";

    trigger OnInsert()
    begin
        PaymentTerms.Reset();
        if PaymentTerms.FindLast() then
            "Line No." := PaymentTerms."Line No." + 1
        else
            "Line No." := 1;

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
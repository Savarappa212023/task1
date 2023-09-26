table 50004 "AMC_Payment Terms Conditions"
{
    DataClassification = ToBeClassified;
    Caption = 'AMC Payment Terms Conditions';
    fields
    {
        field(1; "Document Type"; enum "AMC Document Type")
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(4; Description1; Text[500])
        {

        }
        field(5; Description2; Text[500])
        {

        }
        field(6; Description3; Text[500])
        {

        }


    }

    keys
    {
        key(Pk; "Document Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        PaymentTerms: Record "Payment Terms Conditions";

    trigger OnInsert()
    begin

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
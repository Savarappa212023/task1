table 50001 Specification
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; DocumentType; Option)
        {
            OptionMembers = Order,Invoice,Receipt;
            OptionCaption = 'Order,Invoice,Receipt';
            DataClassification = ToBeClassified;

        }
        field(2; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';
        }
        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No.';
        }

        field(7; "Serial No./Product Code"; Code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Serial No./Product Code';
        }


        field(9; Description; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

        field(11; Qty; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Caption = 'Qty';
            trigger OnValidate()
            var

            begin

                if Qty < "Qty. Received" then
                    Error(QtyErr, "Qty. Received");
                CalculateAmt();

            end;
        }

        field(15; UOM; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'UOM';

        }
        field(17; "Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit Cost';
            DecimalPlaces = 0 : 2;
            trigger OnValidate()
            var

            begin

                CalculateAmt();

            end;

        }
        field(19; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Caption = 'Amount';
        }
        //B2BCHPOn8March22>>
        field(20; Remarks; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Remarks';
        }
        field(21; "Qty. to receive"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Qty. to receive';
            trigger OnValidate()
            begin
                if ("Qty. to receive" + "Qty. Received") > Qty then
                    Error(SpecificationQtyErr, Qty - "Qty. Received");

            end;
        }
        field(22; "Qty. Received"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Qty. received';
            Editable = false;
        }
        field(23; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Amount';
        }
        //B2BCHPOn8March22>>

    }

    keys
    {
        key(PK; DocumentType, "Document No.", "Line No.")
        {
            Clustered = true;
        }

    }

    var




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

    procedure CalculateAmt()
    begin
        Amount := Round(Qty * "Unit Cost", 0.01)
    end;

    Var
        SpecificationQtyErr: Label 'Qty. to receive %1 cannot be greater than Quantity';
        QtyErr: Label 'Quantity %1 cannot be less than Qty to Received';

}
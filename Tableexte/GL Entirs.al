tableextension 50004 GlEntries extends "G/L Entry"
{
    fields
    {
        field(50000; "Shortcut Dimension3"; code[20])
        {
           // DataClassification = ToBeClassified;
            Caption = 'Shortcut Dimension 3 Code';
            CaptionClass = '1,2,3';
           // TableRelation = "Dimension Value".Code where("Global Dimension No." = const(3));
             FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Set ID" = field("Dimension Set ID"),
                                                                                    "Global Dimension No." = const(3)));
        }
        field(50001; "Shortcut Dimension4"; code[20])
        {
           // DataClassification = ToBeClassified;
            Caption = 'Shortcut Dimension 4 Code';
            CaptionClass = '1,2,4';
            //TableRelation = "Dimension Value".Code where("Global Dimension No." = const(4));
             FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Set ID" = field("Dimension Set ID"),
                                                                                    "Global Dimension No." = const(3)));
        }
        field(50002; "Shortcut Dimension5"; code[20])
        {
           // DataClassification = ToBeClassified;
            Caption = 'Shortcut Dimension 5 Code';
            CaptionClass = '1,2,5';
            //TableRelation = "Dimension Value".Code where("Global Dimension No." = const(5));
             FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Set ID" = field("Dimension Set ID"),
                                                                                    "Global Dimension No." = const(3)));
        }
        field(50003; "Shortcut Dimension6"; code[20])
        {
            //DataClassification = ToBeClassified;
            Caption = 'Shortcut Dimension 6 Code';
            CaptionClass = '1,2,6';
            //TableRelation = "Dimension Value".Code where("Global Dimension No." = const(6));
             FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Set ID" = field("Dimension Set ID"),
                                                                                    "Global Dimension No." = const(3)));
        }
        field(50004; "Shortcut Dimension7"; code[20])
        {
           // DataClassification = ToBeClassified;
            Caption = 'Shortcut Dimension 7 Code';
            CaptionClass = '1,2,7';
           // TableRelation = "Dimension Value".Code where("Global Dimension No." = const(7));
            FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Set ID" = field("Dimension Set ID"),
                                                                                    "Global Dimension No." = const(3)));
        }
        field(50005; "Shortcut Dimension8"; code[20])
        {
           // DataClassification = ToBeClassified;
            Caption = 'Shortcut Dimension 8 Code';
            CaptionClass = '1,2,8';
            //TableRelation = "Dimension Value".Code where("Global Dimension No." = const(8));
             FieldClass = FlowField;
            CalcFormula = lookup("Dimension Set Entry"."Dimension Value Code" where("Dimension Set ID" = field("Dimension Set ID"),
                                                                                    "Global Dimension No." = const(3)));
        }
    }

    var
        myInt: Integer;
}
pageextension 50006 GlEntries extends "General Ledger Entries"
{
    layout
    {
        addafter("Global Dimension 2 Code")
        {


            field("Shortcut Dimension3"; Rec."Shortcut Dimension3")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shortcut Dimension 3 Code field.';
            }
            field("Shortcut Dimension4"; Rec."Shortcut Dimension4")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shortcut Dimension 4 Code field.';
            }
            field("Shortcut Dimension5"; Rec."Shortcut Dimension5")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shortcut Dimension 5 Code field.';
            }
            field("Shortcut Dimension6"; Rec."Shortcut Dimension6")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shortcut Dimension 6 Code field.';
            }
            field("Shortcut Dimension7"; Rec."Shortcut Dimension7")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shortcut Dimension 7 Code field.';
            }
            field("Shortcut Dimension8"; Rec."Shortcut Dimension8")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shortcut Dimension 8 Code field.';
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
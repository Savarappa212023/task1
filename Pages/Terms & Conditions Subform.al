page 50010 "Terms & Conditions Subform B2B"
{
    PageType = ListPart;
    SourceTable = "Terms & Conditions B2B";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Terms Type"; Rec."Terms Type")
                {
                    ApplicationArea = All;
                }
                field("S. No."; Rec."S. No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
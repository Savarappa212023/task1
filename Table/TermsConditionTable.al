table 50010 "Terms & Conditions B2B"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Terms Type"; Enum "Terms Types")
        {
            DataClassification = CustomerContent;
        }
        field(3; "S. No."; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(4; "Description"; Text[500])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Terms Type", "S. No.")
        {
            Clustered = true;
        }
        key(Key2; "Terms Type", "S. No.")
        {
        }
    }
}
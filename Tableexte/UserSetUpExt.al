tableextension 50000 NewUserSetUp extends "User Setup"
{
    fields
    {
        field(50001; UnitPrice; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "Item Categary Filter"; Text[250])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Item Category".Code;
        }
    }

    var
        myInt: Integer;
}
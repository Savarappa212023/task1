tableextension 50015 CustExt extends Customer
{
    fields
    {
        field(50001; VendorName; Text[250])
        {

            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("No.")));
        }
    }

    var
        myInt: Integer;
}
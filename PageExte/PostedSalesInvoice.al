pageextension 50003 PostedSalesInvoice extends "Posted Sales Invoice"
{
    layout
    {
    }


    var
        myInt: Integer;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction = Action::LookupOK then
            Codeunit.Run(Codeunit::SalesInvoiceHeader, Rec)
    end;

}
pageextension 50001 SalesOrderSubform extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Price")
        {
            Editable = FieldEditable;
        }
        modify("No.")
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                usersetup: Record "User Setup";
                item: Record Item;
                ItemList: Page "Item List";
                ChargeItemlist: page "Item Charges";
                fixedAsset: Record "Fixed Asset";
                chargeItem: Record "Item Charge";
                GLAccount:Record "G/L Account";
            begin
                usersetup.Get(UserId);
                case Rec.Type of                    
                    Rec.Type::"Charge (Item)":
                        begin
                            chargeItem.Reset();
                            if page.RunModal(Page::"Item Charges", chargeItem) = Action::LookupOK then;
                            Rec.Validate("No.", chargeItem."No.");
                        end;
                    Rec.Type::"Fixed Asset":
                        begin
                            fixedAsset.Reset();
                            if page.RunModal(Page::"Fixed Asset List", fixedAsset) = Action::LookupOK then;
                            Rec.Validate("No.", fixedAsset."No.");
                        end;
                    Rec.Type::"G/L Account":
                        begin
                            GLAccount.Reset();
                            GLAccount.SetRange("Direct Posting", true);
                            GLAccount.SetRange("Account Type", GLAccount."Account Type"::Posting);
                            GLAccount.SetRange(Blocked, false);
                            if page.RunModal(Page::"G/L Account List", GLAccount) = Action::LookupOK then;
                            rec.Validate("No.", GLAccount."No.");
                        end;
                    Rec.Type::Item:
                        begin
                            item.Reset();
                            item.SetRange(Blocked, false);
                            item.SetRange("Sales Blocked", false);
                            item.SetFilter("Item Category Code", usersetup."Item Categary Filter"); 
                            if Page.RunModal(Page::"Item List", item) = Action::LookupOK then
                                rec.Validate("No.", item."No.");                          
                        end;

                end;
            end;


        }

    }


    trigger OnAfterGetRecord()
    var
        usersetup: Record "User Setup";
    begin
        if (usersetup.Get(UserId)) and (usersetup.UnitPrice) then
            FieldEditable := true
        else
            FieldEditable := false;

    end;


    var
        FieldEditable: Boolean;
}

pageextension 50000 UseSetUp extends "User Setup"
{
    layout
    {
        addafter(PhoneNo)
        {
            field(UnitPrice; Rec.UnitPrice)
            {
                Caption = 'Unit Price';
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the UnitPrice field.';
            }
            field("Item Categary Filter"; Rec."Item Categary Filter")
            {
                ApplicationArea = All;
                Caption = 'Item category filter';
                trigger OnLookup(var Text: Text): Boolean
                var
                    ItemCategoryList: Page "Item Categories";
                    ItemCategory: Record "Item Category";
                    SelectonMgmt: Codeunit SelectionFilterManagement;
                    RecRef: RecordRef;
                begin
                    
                    ItemCategoryList.LookupMode(true);
                    if ItemCategoryList.RunModal() = Action::LookupOK then begin
                        ItemCategoryList.SetSelectionFilter(ItemCategory);
                          ItemCategory.Reset();
                        if ItemCategory.FindSet() then begin
                            RecRef.GetTable(ItemCategory);
                            Rec."Item Categary Filter" := SelectonMgmt.GetSelectionFilter(RecRef, ItemCategory.FieldNo(Code));
                        end;
                    end;
                end;
            }
        }
    }
}
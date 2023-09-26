page 50001 Ageing_buckect
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Age_Bucket;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
               
                field(EmployeeNo; Rec.EmployeeNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the EmployeeNo field.';
                }
                field(EmployeeName; Rec.EmployeeName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the EmployeeName field.';
                }
                field(Experience1; Rec.Experience1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Experience1 field.';
                }
                field(Experience2; Rec.Experience2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Experience2 field.';
                }
                field(Experience3; Rec.Experience3)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Experience3 field.';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}
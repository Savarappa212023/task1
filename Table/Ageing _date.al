table 50005 Age_Bucket
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;EmployeeNo; code[20])
        {
            DataClassification = ToBeClassified;
            
        }
         field(2;EmployeeName; text[250])
        {
            DataClassification = ToBeClassified;
            
        }
         field(3;Experience1; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
            date: Date;
            begin
                
            end;
            
        }
         field(4;Experience2;Date)
        {
            DataClassification = ToBeClassified;
            
        }
         field(5;Experience3; Date)
        {
            DataClassification = ToBeClassified;
            
        }
    }
    
    keys
    {
        key(pk; EmployeeNo)
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}
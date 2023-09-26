table 50008 "My Table"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;PrimaryKey; code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;Address ; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk;PrimaryKey)
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
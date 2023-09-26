table 50003 "Payment Terms And Conditions"
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; DocumentType; Option)
        {
            OptionMembers = Order,Invoice,Receipt;
            OptionCaption = 'Order,Invoice,Receipt';
            DataClassification = ToBeClassified;

        }
        field(2; DocumentNo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; LineNo; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; LineType; Option)
        {
            OptionMembers = ,"AMC Period","Billing & Installation Address","Billing & Delivery Address","Billing Address","Contract Period","Contract Value",Completion,"Completion Timelines","Delivery & Completion",Delivery,"Delivery Address","Delivery & Installation","Liquidated Damages",Maintenance,"ManPower Requirement","Nature Of Work",Others,Payment,Packing,"Payment Terms","Shifting Date","Shipping Address","Support Period",Taxes,"Terms & Conditions","Total AMC Value Yearly","Total Contract Value",Warranty,"Delivery Address2","Event Date","Courier Charges";
            OptionCaption = ',AMC Period,Billing & Installation Address,Billing & Delivery Address,Billing Address,Contract Period,Contract Value,Completion,Completion Timelines,Delivery & Completion,Delivery,Delivery Address,Delivery & Installation,Liquidated Damages,Maintenance,ManPower Requirement,Nature Of Work,Others,Payment,Packing,Payment Terms,Shifting Date,Shipping Address,Support Period,Taxes,Terms & Conditions,Total AMC Value Yearly,Total Contract Value,Warranty,Delivery Address2,Event Date,Courier Charges';
        }
        Field(5; Description; Text[500])
        {

        }
        field(6; "Order Type"; Enum "OrderType")
        {
            DataClassification = ToBeClassified;
        }
        field(7; Sequence; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Location Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
            trigger onvalidate()
            var
                Loc: Record Location;
                State: Record State;
                CountryRegion: Record "Country/Region";
            begin
                if (LineType = LineType::"Delivery Address") or (LineType = LineType::"Billing Address") then begin
                    Loc.Get("Location Code");
                    //Description := Loc.Address + loc."Address 2" + ',' + Loc."Post Code" + ',' + Loc.City + ',' + Loc."State Code" + ',' + loc."Country/Region Code" + '.';
                    if State.Get(Loc."State Code") then;
                    if CountryRegion.Get(Loc."Country/Region Code") then;
                   /*if Loc."Address 3" = '' then
                        Description := ': ' + Loc.Address + loc."Address 2" + ', ' + Loc.City + ', ' + Loc."Post Code" + ', ' + State.Description + ', ' + CountryRegion.Name + '.'
                    else
                        Description := ': ' + Loc.Address + loc."Address 2" + ', ' + Loc."Address 3" + ', ' + Loc.City + ', ' + Loc."Post Code" + ', ' + State.Description + ', ' + CountryRegion.Name + '.'
                */end;
            end;
        }

    }

    keys
    {
        key(PK; DocumentType, DocumentNo, LineNo)
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
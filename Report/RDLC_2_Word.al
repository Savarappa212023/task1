report 50003 Report
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = SalesReport_Rdl;
    Caption = 'sales Order Report';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = where("Document Type" = const(order));
            RequestFilterFields = "No.", "Order Date";
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            { }
            column(Sell_to_Address; "Sell-to Address")
            { }
            column(Sell_to_City; "Sell-to City")
            { }
            column(Sell_to_Post_Code; "Sell-to Post Code")
            { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code")
            { }
            column(Sell_to_Contact; "Sell-to Contact")
            { }
            column(Bill_to_Customer_No_; "Bill-to Customer No.")
            { }
            column(Bill_Of_Export_Date; Format("Bill Of Export Date", 0, '<Day,2>.<Month>.<Year4>'))
            { }

            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Sales Header";

                column(Document_No_; "Document No.")
                { }
                column(Shipment_Date; format("Shipment Date", 0, '<month Text> <Day,2>,<year4>'))
                { }



            }
            dataitem("Payment Terms And Conditions"; "Payment Terms And Conditions")
            {
                DataItemLink = DocumentNo = field("No.");

                column(LineType; LineType)
                { }
                column(Description; Description)
                { }
                column(SNO; SNO)
                { }


                trigger OnPreDataItem()
                begin
                    SNO := 0;
                end;

                trigger OnAfterGetRecord()
                begin
                    SNO += 1;
                end;

            }
            dataitem("AMC_Payment Terms Conditions"; "AMC_Payment Terms Conditions")
            {
                DataItemLink = "Document No." = field("No.");
                column(Document_No_Amc; "Document No.")
                { }
                column(Line_No_; "Line No.")
                { }
                column(Description1_AMC; Description1)
                { }
                column(Description2; Description2)
                { }
                column(Description3; Description3)
                { }
                column(SNO_AMC; SNO)
                { }
                trigger OnAfterGetRecord()
                begin
                    SNO += 1;
                end;

            }
            dataitem(Integer; Integer)
            {
                MaxIteration = 1;
                column(TotalAmount; TotalAmount)
                {
                }
            }
            dataitem(Specification; Specification)
            {

                DataItemLink = "Document No." = field("No.");
                column(Serial_No__Product_Code; "Serial No./Product Code")
                { }
                column(Description1; Description)
                { }
                column(UOM; UOM)
                { }
                column(Qty; Qty)
                { }
                column(Amount; Amount)
                { }
                column(Unit_Cost; "Unit Cost")
                { }

                trigger OnAfterGetRecord()
                begin
                    TotalAmount += Amount;
                end;
            }

        }

    }

    rendering
    {
        layout(SalesReport_Rdl)
        {
            Type = RDLC;
            LayoutFile = 'SalesReport.rdl';
        }
        layout(SalesReport_Word)
        {
            Type = Word;
            LayoutFile = 'SalesReport.docx';
        }

    }
    var
        TotalAmount: Decimal;
        SNO: Integer;
        PaymentTurms: Record "Payment Terms Conditions";
}
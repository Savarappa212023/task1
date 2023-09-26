report 50007 "Customer - Summary"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerSummaryAging.rdl';
    ApplicationArea = All;
    Caption = 'CustAgeing Bucket';
    UsageCategory = ReportsAndAnalysis;
    DataAccessIntent = ReadOnly;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Search Name", "Customer Posting Group", "Currency Filter";
            column(COMPANYNAME; COMPANYPROPERTY.DisplayName)
            {
            }
            column(PrintAmountsInLCY; PrintAmountsInLCY)
            {
            }
            column(Customer_TABLECAPTION__________CustFilter; TableCaption + ': ' + CustFilter)
            {
            }
            column(CustFilter; CustFilter)
            {
            }
            column(PeriodStartDate_2_; Format(PeriodStartDate[2]))
            {
            }
            column(PeriodStartDate_3_; Format(PeriodStartDate[3]))
            {
            }
            column(PeriodStartDate_4_; Format(PeriodStartDate[4]))
            {
            }
            column(PeriodStartDate_3____1; Format(PeriodStartDate[3] - 1))
            {
            }
            column(PeriodStartDate_4____1; Format(PeriodStartDate[4] - 1))
            {
            }
            column(PeriodStartDate_5____1; Format(PeriodStartDate[5] - 1))
            {
            }
            column(PrintLine; PrintLine)
            {
            }
            column(CustBalanceDueLCY_1_; CustBalanceDueLCY[1])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDueLCY_2_; CustBalanceDueLCY[2])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDueLCY_3_; CustBalanceDueLCY[3])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDueLCY_4_; CustBalanceDueLCY[4])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDueLCY_5_; CustBalanceDueLCY[5])
            {
                AutoFormatType = 1;
            }
            column(TotalCustAmtDueLCY; TotalCustAmtDueLCY)
            {
                AutoFormatType = 1;
            }
            column(LineTotalCustAmountDue; LineTotalCustAmountDue)
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDue_5_; CustBalanceDue[5])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDue_4_; CustBalanceDue[4])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDue_3_; CustBalanceDue[3])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDue_2_; CustBalanceDue[2])
            {
                AutoFormatType = 1;
            }
            column(CustBalanceDue_1_; CustBalanceDue[1])
            {
                AutoFormatType = 1;
            }
            column(Customer_Name; Name)
            {
            }
            column(Customer__No__; "No.")
            {
            }
            column(InCustBalanceDueLCY_1; InCustBalanceDueLCY[1])
            {
                AutoFormatType = 1;
            }
            column(InCustBalanceDueLCY_2; InCustBalanceDueLCY[2])
            {
                AutoFormatType = 1;
            }
            column(InCustBalanceDueLCY_3; InCustBalanceDueLCY[3])
            {
                AutoFormatType = 1;
            }
            column(InCustBalanceDueLCY_4; InCustBalanceDueLCY[4])
            {
                AutoFormatType = 1;
            }
            column(InCustBalanceDueLCY_5; InCustBalanceDueLCY[5])
            {
                AutoFormatType = 1;
            }
            column(Customer___Summary_AgingCaption; Customer___Summary_AgingCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(All_amounts_are_in_LCYCaption; All_amounts_are_in_LCYCaptionLbl)
            {
            }
            column(Balance_DueCaption; Balance_DueCaptionLbl)
            {
            }
            column(Customer__No___Control29Caption; FieldCaption("No."))
            {
            }
            column(Customer_Name_Control30Caption; FieldCaption(Name))
            {
            }
            column(CustBalanceDue_1__Control31Caption; CustBalanceDue_1__Control31CaptionLbl)
            {
            }
            column(CustBalanceDue_5__Control35Caption; CustBalanceDue_5__Control35CaptionLbl)
            {
            }
            column(LineTotalCustAmountDue_Control36Caption; LineTotalCustAmountDue_Control36CaptionLbl)
            {
            }
            column(Total__LCY_Caption; Total__LCY_CaptionLbl)
            {
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                column(Currency2_Code; Currency2.Code)
                {
                }
                column(LineTotalCustAmountDue_Control36; LineTotalCustAmountDue)
                {
                    AutoFormatExpression = Currency2.Code;
                    AutoFormatType = 1;
                }
                column(CustBalanceDue_5__Control35; CustBalanceDue[5])
                {
                    AutoFormatExpression = Currency2.Code;
                    AutoFormatType = 1;
                }
                column(CustBalanceDue_4__Control34; CustBalanceDue[4])
                {
                    AutoFormatExpression = Currency2.Code;
                    AutoFormatType = 1;
                }
                column(CustBalanceDue_3__Control33; CustBalanceDue[3])
                {
                    AutoFormatExpression = Currency2.Code;
                    AutoFormatType = 1;
                }
                column(CustBalanceDue_2__Control32; CustBalanceDue[2])
                {
                    AutoFormatExpression = Currency2.Code;
                    AutoFormatType = 1;
                }
                column(CustBalanceDue_1__Control31; CustBalanceDue[1])
                {
                    AutoFormatExpression = Currency2.Code;
                    AutoFormatType = 1;
                }
                column(Customer_Name_Control30; Customer.Name)
                {
                }
                column(Customer__No___Control29; Customer."No.")
                {
                }

                trigger OnAfterGetRecord()
                var
                    DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                begin
                    if Number = 1 then
                        Currency2.Find('-')
                    else
                        if Currency2.Next() = 0 then
                            CurrReport.Break();
                    Currency2.CalcFields("Cust. Ledg. Entries in Filter");
                    if not Currency2."Cust. Ledg. Entries in Filter" then
                        CurrReport.Skip();

                    PrintLine := false;
                    LineTotalCustAmountDue := 0;
                    for i := 1 to 5 do begin
                        DtldCustLedgEntry.SetCurrentKey("Customer No.", "Initial Entry Due Date");
                        DtldCustLedgEntry.SetRange("Customer No.", Customer."No.");
                        DtldCustLedgEntry.SetRange("Initial Entry Due Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                        DtldCustLedgEntry.SetRange("Currency Code", Currency2.Code);
                        DtldCustLedgEntry.CalcSums(Amount);
                        CustBalanceDue[i] := DtldCustLedgEntry.Amount;
                        InCustBalanceDueLCY[i] := InCustBalanceDueLCY2[i];
                        if CustBalanceDue[i] <> 0 then
                            PrintLine := true;
                        LineTotalCustAmountDue := LineTotalCustAmountDue + CustBalanceDue[i];
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    if PrintAmountsInLCY or not PrintLine then
                        CurrReport.Break();
                    Currency2.Reset();
                    Currency2.SetRange("Customer Filter", Customer."No.");
                    Customer.CopyFilter("Currency Filter", Currency2.Code);
                    if (Customer.GetFilter("Global Dimension 1 Filter") <> '') or
                       (Customer.GetFilter("Global Dimension 2 Filter") <> '')
                    then begin
                        Customer.CopyFilter("Global Dimension 1 Filter", Currency2."Global Dimension 1 Filter");
                        Customer.CopyFilter("Global Dimension 2 Filter", Currency2."Global Dimension 2 Filter");
                    end;
                end;
            }

            trigger OnAfterGetRecord()
            var
                DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
            begin
                Clear(CustBalanceDueLCY);
                TotalCustAmtDueLCY := 0;

                PrintLine := false;
                LineTotalCustAmountDue := 0;
                CopyFilter("Currency Filter", DtldCustLedgEntry."Currency Code");
                for i := 1 to 5 do begin
                    DtldCustLedgEntry.SetCurrentKey("Customer No.", "Initial Entry Due Date");
                    DtldCustLedgEntry.SetRange("Customer No.", "No.");
                    DtldCustLedgEntry.SetRange("Initial Entry Due Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    DtldCustLedgEntry.CalcSums("Amount (LCY)");
                    CustBalanceDue[i] := DtldCustLedgEntry."Amount (LCY)";
                    CustBalanceDueLCY[i] := DtldCustLedgEntry."Amount (LCY)";
                    if PrintAmountsInLCY then
                        InCustBalanceDueLCY[i] += DtldCustLedgEntry."Amount (LCY)"
                    else
                        InCustBalanceDueLCY2[i] += DtldCustLedgEntry."Amount (LCY)";
                    if CustBalanceDue[i] <> 0 then
                        PrintLine := true;
                    LineTotalCustAmountDue := LineTotalCustAmountDue + CustBalanceDueLCY[i];
                    TotalCustAmtDueLCY := TotalCustAmtDueLCY + CustBalanceDueLCY[i];
                end;
            end;

            trigger OnPreDataItem()
            begin
                Currency2.Code := '';
                Currency2.Insert();
                if Currency.Find('-') then
                    repeat
                        Currency2 := Currency;
                        Currency2.Insert();
                    until Currency.Next() = 0;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field("PeriodStartDate[2]"; PeriodStartDate[2])
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Starting Date';
                        NotBlank = true;
                        ToolTip = 'Specifies the beginning of the period covered by the report that lists payables owed to each Customer.';
                    }
                    field(PeriodLength; PeriodLength)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Period Length';
                        ToolTip = 'Specifies the length of each of the three periods. For example, enter "1M" for one month.';
                    }
                    field(PrintAmountsInLCY; PrintAmountsInLCY)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Amounts in LCY';
                        ToolTip = 'Specifies if amounts in the report are displayed in LCY. If you leave the check box blank, amounts are shown in foreign currencies.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            if PeriodStartDate[2] = 0D then
                PeriodStartDate[2] := WorkDate;
            if Format(PeriodLength) = '' then
                Evaluate(PeriodLength, '<1M>');
        end;
    }

    labels
    {
    }

    trigger OnPreReport()
    var
        FormatDocument: Codeunit "Format Document";
    begin
        CustFilter := FormatDocument.GetRecordFiltersWithCaptions(Customer);
        for i := 3 to 5 do
            PeriodStartDate[i] := CalcDate(PeriodLength, PeriodStartDate[i - 1]);
        PeriodStartDate[6] := DMY2Date(31, 12, 9999);
    end;

    var
        Currency: Record Currency;
        Currency2: Record Currency temporary;
        PrintAmountsInLCY: Boolean;
        CustFilter: Text;
        PeriodStartDate: array[6] of Date;
        LineTotalCustAmountDue: Decimal;
        TotalCustAmtDueLCY: Decimal;
        CustBalanceDue: array[5] of Decimal;
        CustBalanceDueLCY: array[5] of Decimal;
        PeriodLength: DateFormula;
        PrintLine: Boolean;
        i: Integer;
        InCustBalanceDueLCY: array[5] of Decimal;
        InCustBalanceDueLCY2: array[5] of Decimal;
        Customer___Summary_AgingCaptionLbl: Label 'Customer - Summary Aging';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        All_amounts_are_in_LCYCaptionLbl: Label 'All amounts are in LCY.';
        Balance_DueCaptionLbl: Label 'Balance Due';
        CustBalanceDue_1__Control31CaptionLbl: Label '...Before';
        CustBalanceDue_5__Control35CaptionLbl: Label 'After...';
        LineTotalCustAmountDue_Control36CaptionLbl: Label 'Balance';
        Total__LCY_CaptionLbl: Label 'Total (LCY)';

    procedure InitializeRequest(NewPeriodStartDate: Date; NewPeriodLength: Text[10]; NewPrintAmountsInLCY: Boolean)
    begin
        PeriodStartDate[2] := NewPeriodStartDate;
        Evaluate(PeriodLength, NewPeriodLength);
        PrintAmountsInLCY := NewPrintAmountsInLCY;
    end;
}


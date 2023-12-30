page 50131 PaymentList
{
    PageType = List;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = CustomerPaymentOption1;
    CardPageId = 50130;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(PaymentMethod; Rec.PaymentMethod)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(PaymentDate; Rec.PaymentDate)
                {
                    ApplicationArea = All;
                    Caption = 'PaymentDate';
                    trigger OnValidate()
                    begin
                        if Rec.PaymentDate > Today() then
                            Error('Enter the Current date');
                    end;
                }
                field(BillingDate; Rec.BillingDate)
                {
                    ApplicationArea = All;
                    Caption = 'BillingDate';
                    NotBlank = true;
                    Enabled = false;
                    trigger OnValidate()
                    begin
                        GetTodayDate();
                    end;
                }
            }
        }
    }

    var
        myint: Integer;

    procedure GetTodayDate(): Date

    var
        TodayDate: Date;
    begin
        TodayDate := TODAY;
        exit(TodayDate);

    end;





}
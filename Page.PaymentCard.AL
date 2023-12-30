Page 50130 PaymentCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomerPaymentOption1;

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
                    trigger OnValidate()
                    var
                        credlmt: Codeunit CustomerPaymentoption;
                    begin
                        credlmt.updateCreditLimitBasedOnPaymentMethod(Rec)
                    end;
                }
                field(BillingDate; Rec.BillingDate)
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                    Caption = 'BillingDate';
                    Enabled = false;
                    trigger OnValidate()
                    begin
                        GetTodaysDate();
                    end;
                }
                field(PaymentDate; Rec.PaymentDate)
                {
                    ApplicationArea = all;
                    Caption = 'Payment Date';
                    trigger OnValidate()
                    begin
                        if Rec.PaymentDate < Today() then
                            Error('Enter the correct date')
                    end;
                }
                field(CreditLimit; Rec.CreditLimit)
                {
                    ApplicationArea = All;
                    Caption = 'credit Limit';
                }
                field(PaymentStatus; Rec.PaymentStatus)
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                    Caption = 'Payment Status';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = all;
                    Caption = 'Amount';
                    trigger OnValidate()
                    begin
                        if Rec.Amount > Rec."CreditLimit" then
                            Error('Enter the amount less than credit limit');
                    end;

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
                ApplicationArea = all;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myint: Integer;

    procedure GetTodaysDate(): Date
    var
        TodayDate: date;
    begin
        TodayDate := TODAY;
        exit(TodayDate);
    end;
}
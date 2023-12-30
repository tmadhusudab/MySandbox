codeunit 50101 CustomerPaymentoption
{
    procedure updateCreditLimitBasedOnPaymentMethod(Var Rec: Record CustomerPaymentOption1);

    begin
        case Rec.PaymentMethod of
            Rec.PaymentMethod::UPI:
                begin
                    Rec."CreditLimit" := 15000;
                    Rec."Credit Days" := 30;
                end;
            Rec.PaymentMethod::Card:
                begin
                    Rec."CreditLimit" := 10000;
                    Rec."Credit Days" := 15;
                end;
            Rec.PaymentMethod::cash:
                begin
                    Rec."CreditLimit" := 5000;
                    Rec."Credit Days" := 7;
                end;
        end
    end;
}
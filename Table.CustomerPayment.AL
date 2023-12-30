table 50106 CustomerPaymentOption1
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; CustomerNo; code[20])
        {
            TableRelation = customerDetails;
        }
        field(9; PaymentMethod; Option)
        {
            OptionMembers = cash,UPI,Card;
        }
        field(10; "CreditLimit"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 3;
        }
        field(11; BillingDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(12; PaymentDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(13; PaymentStatus; Option)
        {
            OptionMembers = paid,"half-paid","full-paid";
        }
        field(14; "Credit Days"; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Credit Days" < 0 then
                    "Credit Days" := 0;
            end;
        }
        field(15; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;

        }
        field(16; creditlimt; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
        }
    }
}
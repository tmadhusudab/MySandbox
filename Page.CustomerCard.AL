page 50111 "Card Customer"
{
    PageType = Card;
    ApplicationArea = all;
    SourceTable = customerDetails;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(customerDetails)

            {
                field(CustomerID; Rec.CustomerID)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field(PhoneNo; Rec.PhoneNo)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(EmailId; Rec.EmailId)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
            }

            group(CustAddress)
            {
                field(Billingadd; Rec.Billingadd)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(Shippingadd; Rec.Shippingadd)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
            }
            group(other)
            {
                field(Customtype; Rec.Customtype)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(status; Rec.status)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
            }
        }
    }

}
page 50113 ListCustomer
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = customerDetails;
    CardPageId = 50111;

    layout
    {

        area(Content)
        {
            repeater(Group)
            {
                field(CustomerID; Rec.CustomerID)
                {
                    ApplicationArea = All;
                    Caption = 'CustomerID';
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ApplicationArea = All;
                    Caption = 'CustomerName';
                }
                field(PhoneNo; Rec.PhoneNo)
                {

                    ApplicationArea = All;
                    Caption = 'PhoneNo';

                }
                field(EmailId; Rec.EmailId)
                {

                    ApplicationArea = All;
                    Caption = 'EmailId';
                }
                field(Billingadd; Rec.Billingadd)
                {
                    ApplicationArea = All;
                    Caption = 'Billingadd';
                }
                field(Shippingadd; Rec.Shippingadd)
                {

                    ApplicationArea = All;
                    Caption = 'Shippingaddress';
                }
                field(Customtype; Rec.Customtype)
                {

                    ApplicationArea = All;
                    Caption = 'customertype';
                }
                field(status; Rec.status)
                {

                    ApplicationArea = All;
                    Caption = 'Status';
                }
            }
        }
    }
}
report 50105 CustomerList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(customerDetails; customerDetails)
        {
            column(CustomerID; CustomerID)
            {
                Description = 'CustomerID';
            }

            column(CustomerName; CustomerName)
            {
                Description = 'Name';
            }

            column(EmailId; EmailId)
            {
                Description = 'Email ID';
            }
            column(Billingadd; Billingadd)
            {
                Description = 'Billing Address';
            }
        }


    }

    requestpage
    {

        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Test; Test)
                    {
                        ApplicationArea = All;
                        ShowCaption = false;
                        Editable = false;

                        trigger OnDrillDown()
                        begin

                            Message('This is a test action');

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
                    ApplicationArea = All;
                }
            }
        }
    }
    rendering
    {
        layout(LayoutName)
        {
            Type = Word;
            LayoutFile = 'CustomerList.docx';
        }
    }

    var
        test: Label 'Test the request page';

}

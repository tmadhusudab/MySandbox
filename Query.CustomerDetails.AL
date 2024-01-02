query 50103 MyQuery
{
    QueryType = Normal;

    elements
    {
        dataitem(customerDetails; customerDetails)
        {
            column(No; No)
            {

            }

            column(CustomerID; CustomerID)
            {

            }

            column(PhoneNo; PhoneNo)
            {

            }

            column(Billingadd; Billingadd)
            {

            }

            column(Customtype; Customtype)
            {

            }

            column(status; status)
            {

            }

            filter(CustomerName; CustomerName)
            {

                ColumnFilter = CustomerName = CONST('Rajesh');
            }
        }
    }

}






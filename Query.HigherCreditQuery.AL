query 50101 "Higher credit limit"
{
    QueryType = Normal;
    Description = 'Filter Credit limit greater than 10000';

    elements
    {
        dataitem(CustomerPaymentOption1; CustomerPaymentOption1)
        {
            column(creditlimt; "creditlimt")
            {
                Caption = 'Credit Limit';
                ColumnFilter = creditlimt = filter(> 10000);
            }

            filter(HighCreditLimit; "CreditLimit")
            {
                caption = 'High Credit Limit';
            }

            dataitem(customerDetails; customerDetails)
            {
                DataItemLink = CustomerID = CustomerPaymentOption1.CustomerNo;
                SqlJoinType = InnerJoin;
            }

        }


    }
}
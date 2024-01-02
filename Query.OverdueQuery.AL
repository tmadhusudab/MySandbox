query 50102 "Overdue Customers"
{
    QueryType = Normal;
    elements
    {
        dataitem(CustomerPaymentOption1; CustomerPaymentOption1)
        {
            DataItemTableFilter = CreditLimit = filter(> 10000);
            column(PaymentDate; PaymentDate)
            {
                caption = 'Overdue Amount';
            }
            dataitem(customerDetails; customerDetails)
            {
                DataItemLink = CustomerID = CustomerPaymentOption1."CustomerNo";
                SqlJoinType = InnerJoin;
            }
        }


    }
}
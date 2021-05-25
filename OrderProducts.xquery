for $x in doc('Stock.xml')/Stock/Product
where $x/amount < 5
return <OrderProduct>
            {$x/model}
            {$x/brand}
            <order-amount>5</order-amount>
        </OrderProduct>

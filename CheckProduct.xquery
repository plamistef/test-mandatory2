for $x in doc('Stock.xml')/Stock/Product
order by $x/brand
return <CheckProduct>
            {$x/model}
            {$x/amount}
        </CheckProduct>
(:~ doc("Stock.xml")/Stock/Product ~:)

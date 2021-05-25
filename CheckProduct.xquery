(:~ for $x in doc('Stock.xml')/Product
order by $x/@brand
return <CheckProduct>
            <brand>{$x/@brand}</brand>
            <model>{$x/@model}</model>
            <amount>{$x/@amount}</amount>
        </CheckProduct> ~:)
doc("Stock.xml")/Stock/Product

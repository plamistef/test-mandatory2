for $x in doc('Stock.xml')/Product
order by $x/@brand/model
return <CheckProduct>
            <brand>{$x/@brand}</brand>
            <model>{$x/@model}</model>
            <amount>{$x/@amount}</amount>
        </CheckProduct>

for $x in doc('Stock.xml')/Stock/Product
order by $x/model
where $x/model = "11 Pro"
return <CheckProduct>
            {$x/model}
            {$x/amount}
        </CheckProduct>

for $x in doc('Stock.xml')/Stock/Product
where $x/model = "12 Pro Max"
return if ($x/amount > 0)
then <SendProduct>
        {$x/model}
        <amount>1</amount>
        <delivery-address>Dalslandsgade 8, Copenhagen</delivery-address>
    </SendProduct>
else <Error>
        {$x/model}
        <message>The model is not available at the moment</message>
    </Error>
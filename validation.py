from lxml import etree
parser = etree.XMLParser(dtd_validation=True, no_network=True)
try:
    valid = etree.parse("Stock.xml", parser=parser)
    print("This file is valid against the DTD.")
except etree.XMLSyntaxError:
   print("This file is INVALID against the DTD!")
   print(error)
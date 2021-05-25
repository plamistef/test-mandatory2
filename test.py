import xml.etree.ElementTree as ET
from lxml import entree
try:
    valid = ET.parse("Stock.xml")
    print("This file is valid against the DTD.")
except ET.XMLSyntaxError:
   print("This file is INVALID against the DTD!")

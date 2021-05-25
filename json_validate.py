import json
import jsonschema
from jsonschema import validate


def get_schema(name):
    """This function loads the given schema available"""
    with open(name + '_grammar.json', 'r') as file:
        schema = json.load(file)
    return schema


def validate_json(json_data, name):
    """REF: https://json-schema.org/ """
    # Describe what kind of json you expect.
    execute_api_schema = get_schema(name)

    try:
        validate(instance=json_data, schema=execute_api_schema)
    except jsonschema.exceptions.ValidationError as err:
        print(err)
        err = "Given JSON data is InValid"
        return False, err

    message = "Given JSON data is Valid"
    return True, message

def validation(name):
    with open(name + '.json') as f:
       d = json.load(f)

    for product in d:
        is_valid, msg = validate_json(product, name)
        print(msg)

validation("Company")
validation("Stock")

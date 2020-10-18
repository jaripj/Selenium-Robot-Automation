import json
import jsonpath

def read_locator_from_json(locatorname):
    # Vaatii utf-8. Ei toimi loads-komennolla
    #response = json.loads("../JsonFiles/Elements.json")
    #value = jsonpath.jsonpath((response,locatorname))
    f = open('C:/Users/jaj/PycharmProjects/RobotAutomation/JsonFiles/Elements.json','r')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatorname)
    return value[0]
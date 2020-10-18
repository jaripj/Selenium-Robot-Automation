*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot
Documentation  This file having testcase of testing ABC functionality
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
Library  ../ExternalKeywords/Locators.py

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Chrome


*** Test Cases ***
Robot First Test Case
    [Tags]  Smoke
    ${username}=  Read Element Locator  Registration.username_texbox_name
    input text  name:${username}  Testausta
    input text  name:fld_email  testaus@gmail.com
    input text  name:fld_password  12345

Robot Next Test Case
    select radio button  add_type  office

*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [Return]  ${result}
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    Enter Username Password Email

*** Keywords ***
Enter Username Password Email
    input text  name:fld_username  Testaus
    input text  name:fld_email  testaus@gmail.com
    input text  name:fld_password  123456



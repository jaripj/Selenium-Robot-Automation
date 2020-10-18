*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    Input Text  name:fld_username  TestingWorld
    Input Text  xpath://input[@name='fld_email']  testi@gmail.com
    clear element text  name:fld_username
    close browser
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Login Logout Functionally
    Open Browser  ${var1}  Chrome
    maximize browser window
    title should be  Login & Sign Up Forms
    #element should be disabled  name:fld_username
    element should be visible  name:fld_username
    #element should not be visible  name:fld_username
*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py


*** Variables ***


*** Keywords ***
Start Browser and Maximize
    Open Browser  https://www.thetestingworld.com/testings/  Chrome
    maximize browser window

Close Browser Window
    ${Title}=  get title
    log  ${Title}
    close browser


Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suite

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create folder  ${foldername}
    create_subFolder  ${subfoldername}
    log  "Test done succesfully"

Concatinate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultvalue}=  concatinate_two_values  ${username}  ${password}
    log  ${resultvalue}
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Chrome

*** Test Cases ***
Robot Fetch Data
    Concatinate Username and Password  Testing  World
    Open Browser  ${URL}  ${Browser}
    maximize browser window


*** Settings ***
Resource  ../Resources/Resources1.robot

*** Variables ***
*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize
    When Create Folder at Runtime  Testinworld  Testinworld
    Then Concatinate Username and Password  Testa  jaj
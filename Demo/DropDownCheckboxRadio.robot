*** Settings ***
Documentation  Handling Dropdown, Checkbox, and Radio Buttons in Robot Framework
Library  Selenium2Library
Test Teardown  Close Browser

*** Variables ***

*** Test Cases ***
Validate_user_can_select_items_from_the_dropdown
    [Documentation]  This test case verifies that the user can select values from the dropdown and verify it
    [Tags]  Smoke_1
    Open Browser  https://the-internet.herokuapp.com/dropdown  Chrome
    Wait Until Element Is Visible  id:dropdown  timeout=5
    Select From List By Index  id:dropdown  1
    List Selection Should Be  id:dropdown  Option 1
    Select From List By Value  id:dropdown  2
    List Selection Should Be  id:dropdown  Option 2

Validate user can check and uncheck checkboxes
    [Documentation]  This test case verifies that the user can check and uncheck checkboxes and verify it
    [Tags]  Smoke_2
    Open Browser  https://the-internet.herokuapp.com/checkboxes  Chrome
    maximize browser window
    Wait Until Element Is Visible  id:checkboxes  timeout=5
    Page Should Contain Checkbox  tag:input
    Checkbox Should Not Be Selected  css:input:nth-child(1)  #Checking checkbox 1 is not selected
    Checkbox Should Be Selected  css:input:nth-child(3)  #Checking checkbox 2 is selected
    Select Checkbox  css:input:nth-child(1)  #select checkbox 1
    Unselect Checkbox  css:input:nth-child(3)  #unselect checkbox 2
    Checkbox Should Be Selected  css:input:nth-child(1)  #Checking checkbox 1 is selected
    Checkbox Should Not Be Selected  css:input:nth-child(3)  #Checking checkbox 2 is not selected

Validate user can select radio buttons
    [Documentation]  This test case verifies that the user can select radio buttons and verify it
    [Tags]  Smoke_3
    Open Browser  https://www.seleniumeasy.com/test/basic-radiobutton-demo.html  Chrome
    maximize browser window
    Wait Until Element Is Visible  tag:input  timeout=10
    Page Should Contain Radio Button  tag:input
    Radio Button Should Not Be Selected  optradio
    Select Radio Button  optradio  Male
    Radio Button Should Be Set To  optradio   Male
    Select Radio Button  optradio  Female
    Radio Button Should Be Set To  optradio   Female

*** Keywords ***

*** Settings ***
Documentation  Login to page.
Library  Selenium2Library
Variables   env.py
Test Teardown  Close Browser

*** Variables ***
${username}    id:email
${password}    id:password
${btn}   id:login
${wks}  id:workspace_recent_workShare_item_0

*** Test Cases ***
Login Success
    Login To Page And Open Workspace

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  id:email  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  id:password     ${_password}

Open Workspace
    wait until element is visible  ${wks}   10
    click element   ${wks}

Login To Page And Open Workspace
    open browser    ${LOGIN_URL}    chrome
    wait until element is visible  ${username}  5
    maximize browser window
    Type Username  ${USER_EMAIL}
    Type Password  ${USER_PASSWORD}
    click button  ${btn}
    Open Workspace





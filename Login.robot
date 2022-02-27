*** Settings ***
Documentation  Login to page.
Library  Selenium2Library
Variables   ./env.py

*** Variables ***
${username}    id:email
${password}    id:password
${btn}   id:login
${wks}  id:workspace_recent_workShare_item_0

*** Keywords ***
#Type Username   [Arguments]   ${name}
#    input text      id:email      ${name}
#
#Type Password   [Arguments]   ${pass}
#    input text      ${password}        ${pass}

Open Workspace
    wait until element is visible  ${wks}   10
    click element   ${wks}

Login To Page And Open Workspace
    open browser    ${LOGIN_URL}    chrome
    wait until element is visible  ${username}  5
    maximize browser window
    input text  ${username}  ${USER_EMAIL}
    input text  ${password}  ${USER_PASSWORD}
    click button  ${btn}
    Open Workspace





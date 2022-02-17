*** Settings ***
Documentation     A resource file containing WiKi home page specific keywords.
...
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Resource          common_res.txt
Test Teardown  Close Browser
Test Template


*** Variables ***
#************************** Common Variables ******************************
${HomePage URL}              https://www.wikipedia.org/
${HomePage Title}            Wikipedia
${Search Text}               Robot Framework
${Browser}                   Chrome
#************************** Page Elements *********************************
${SearchInput ID}            searchInput
${SearchSubmitButton ID}     go


*** Test Cases ***
Validate Availability
    [Template]  Open URL
    ...

Gherkin style
Login with valid username and password
    [Tags]  TC1    success
    Given   browser is opened to login page
    When    User "demo" logs in with password "admin"
    Then    Home page should be open

Login with empty password
    [Tags]  TC2     fail
    Given   browser is opened to login page
    When    User "demo" logs in with password ""
    Then    log  Login fail

Data-driven style
Login with empty username
    browser is opened to login page
    User "" logs in with password "admin"


*** Keywords ***
Open URL
    [Arguments]     ${URL}


Browser is opened to login page
    open browser to wiki home page

Open Browser To Wiki Home Page
    [Documentation]       For Open WiKi Home Page.
    Open Browser          ${HomePage URL}             ${Browser}
    Maximize Browser Window
    Set Selenium Speed    5
    Title Should Be       ${HomePage Title}

User "${username}" logs in with password "${password}"
    input text  id=username ${username}
    input text  id=password ${password}

Search For Robot Framework
    [Documentation]       do search operation
    Input Text            ${SearchInput ID}           ${Search Text}
    Click Button          ${SearchSubmitButton ID}

Home page should be open
    log  Login Success


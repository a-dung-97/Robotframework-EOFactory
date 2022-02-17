*** Settings ***
Documentation  File Upload Download in Robot Framework
Test Teardown  Close Browser
Library  Selenium2Library
Library  OperatingSystem

*** Test Cases ***
Verify File Upload
    [Documentation]  This test case verifies that a user can successfully upload a file
    [Tags]  Regression_1
    Open Browser  https://the-internet.herokuapp.com/upload  Chrome
    maximize browser window
    Wait Until Element Is Visible  id:file-upload  5
    Choose File  id:file-upload  C://Users/skymap/PycharmProjects/RobotFramework/Demo/image_upload.jpg
    Click Element  id:file-submit
    Element Text Should Be  id:uploaded-files  image_upload.jpg  timeout=5

Verify File Download
    [Documentation]  This test case verifies that a user can successfully download a file
    [Tags]  Regression_2
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary
    ...  download.default_directory=C://Users/skymap/PycharmProjects/RobotFramework/Results
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Create Webdriver  Chrome  chrome_options=${chrome options}
    Go to  https://the-internet.herokuapp.com/download
    Click Link  css:[href="download/sample.pdf"]    #downloads a file

#    ${file}    wait until keyword succeeds  0 min  5 sec  Download_should_be_done    C://Users/skymap/PycharmProjects/RobotFramework/Demo/
    ${files}  List Files In Directory  C://Users/skymap/PycharmProjects/RobotFramework/Results
    Length Should Be  ${files}  2

*** Keywords ***
#Download_should_be_done
#    [Arguments]    ${directory}
#    [Documentation]    Verifies that the directory has only one folder and it is not a temp file.
#    ...
#    ...    Returns path to the file
#    ${files}    List Files In Directory    ${directory}
#    Length Should Be    ${files}    1    Should be only one file in the download folder
#    Should Not Match Regexp    ${files[0]}    (?i).*\\.tmp    Chrome is still downloading a file
#    ${file}    Join Path    ${directory}    ${files[0]}
#    Log    File was successfully downloaded to ${file}
#    [Return]    ${file}

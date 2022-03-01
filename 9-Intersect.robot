*** Settings ***
Documentation  Test Intersect tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test intersect
${input_features}   input_features

*** Test Cases ***
IntersectTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${intersect}
    Type Name  ${name}
    Select Features
    Select Join Attributes  Only
    press keys  None    TAB
    Select Output Type  Line
    Click Submit Button

*** Keywords ***
Select Features
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div/div/div[1]
    input text  id:vectortools_intersect_vector     ${input_features}\n
    press keys  id:vectortools_intersect_vector    TAB

Select Output Type
    [Arguments]     ${type}
    press keys  None    ${type}\n





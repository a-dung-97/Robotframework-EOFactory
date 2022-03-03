*** Settings ***
Documentation  Test Vectorization tool.
Resource  ./Login.robot
Resource    ./Result/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     vectorization_result
${raster_result}    result_1
${confirm_setting}  id:result_vectorizationDialog_confirmButton

*** Test Cases ***
Vectorization
    Login To Page And Open Workspace
    Click Map Menu
    Click Tools Toolbar
    Select Unsupervised Toolkit
    Select Tool  ${vectorization}
    Type Name  ${name}
    Select Raster Result  cropScout     ${raster_result}
    Click Tool Setting Button
    Confirm Setting Dialog

*** Keywords ***
Confirm Setting Dialog
    click element  ${confirm_setting}



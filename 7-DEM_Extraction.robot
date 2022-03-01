*** Settings ***
Documentation  Test DEM Extraction tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     DEM_extraction_result
${image}    dem

*** Test Cases ***
ImageResampling
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${dem_extraction}
    Type Name   ${name}
    Select Image    demExtraction   ${image}
    Click Submit Button

*** Keywords ***


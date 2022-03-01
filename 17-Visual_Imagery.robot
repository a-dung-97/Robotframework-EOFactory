*** Settings ***
Documentation  Test Visual Imagery tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     visual_result
${image}    visual_image
${reference_image}  visual_ref_image

*** Test Cases ***
VisualImagery
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${visual}
    Type Name   ${name}
    Select Image    visual   ${image}
    Select Reference Image  ${reference_image}
    Type Cumulative Min    3
    Type Cumulative Max  90
    Click Submit Button

*** Keywords ***
Select Reference Image
    [Arguments]  ${image}
    click element  //*[@id="ardtools_visual_referenceImage"]/div/div/div[1]
    input text  id:ardtools_visual_referenceImage_imageSelector_searchInput   ${image}
    click element  id:${image}
    press keys  //*[@id="ardtools_visual_referenceImage"]/div/div/div[1]    TAB

Type Cumulative Min
    [Arguments]  ${min}
    input text  ${cumulative_min}  ${min}

Type Cumulative Max
    [Arguments]  ${max}
    input text  ${cumulative_max}  ${max}


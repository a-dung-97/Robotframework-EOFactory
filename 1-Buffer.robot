*** Settings ***
Documentation  Test Buffer tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test buffer
${vector}   vector_clip_1
${search}   id:vectortools_buffer_vector_select2_searchInput

*** Test Cases ***
BufferTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${buffer}
    Type Name   ${name}
    Select Vector   buffer   ${search}   ${vector}
    Type Distance_Resolution_Quadsegs  80   10  10
    Select Cap Style  Square
    Select Join Style  Mitre
##    đang không xóa được giá trị default và bị thêm mới vào sau
    Type Mitre Limit  3
    Click Submit Button

*** Keywords ***
Type Distance_Resolution_Quadsegs
    [Arguments]     ${dis}     ${_resolution}   ${quad}
    input text  ${distance}    ${_distance}
    input text  ${buffer_resolution}   ${_resolution}
    input text  ${quadsegs}     ${_quadsegs}

Select Cap Style
    [Arguments]     ${option}
    press keys    ${cap_style}  ${option}\n
    press keys  ${cap_style}    TAB

Select Join Style
    [Arguments]     ${option}
    press keys  None    ${option}\n

Type Mitre Limit
    [Arguments]      ${mi}
    input text   ${mitre_limit}   ${mi}













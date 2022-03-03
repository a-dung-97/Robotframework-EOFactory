*** Settings ***
Library  Selenium2Library
Variables  ./Result_Locators.py

*** Keywords ***
Click Map Menu
    wait until element is visible  ${map_menu}    10
    click element  ${map_menu}

Click Tools Toolbar
    wait until element is visible  ${toolbar_button}     5
    click button  ${toolbar_button}

Select Unsupervised Toolkit
    click element   ${toolkit_typeSelector}
    click element   ${result}

Select Tool
    [Arguments]     ${type}
    wait until element is visible   ${type_selector}    5
    click element   ${type_selector}
    sleep  1
    click element  ${type}

Type Name
    [Arguments]     ${result_name}
    input text      ${name_of_result}   ${result_name}

Select Raster Result
    [Arguments]      ${type}    ${image_name}
    click element    //*[@id="ardtools_${type}_rasterResult"]/div/div/div[1]
    input text  id:ardtools_${type}_rasterResult_imageSelector_searchInput   ${image_name}
    click element  id:${image_name}

Click Tool Setting Button
    click button  ${tool_setting}

#Click Submit Button
#    click button  ${confirm_button}










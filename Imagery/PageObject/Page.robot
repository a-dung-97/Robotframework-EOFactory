*** Settings ***
Library  Selenium2Library
Variables  ./Locators.py

*** Variables ***

*** Keywords ***
Click Imagery Menu
    wait until element is visible  ${imagery_menu}    10
    click element  ${imagery_menu}

Click Imagery Toolkit
    wait until element is visible  ${imagery_toolkit_icon}     5
    click element  ${imagery_toolkit_icon}

Select Tool
    [Arguments]     ${type}
    wait until element is visible   ${type_selector}    5
    click element   ${type_selector}
    sleep  1
    click element  ${type}

Type Name
    [Arguments]     ${result_name}
    input text      ${name_of_result}   ${result_name}

Select Image
    [Arguments]      ${type}    ${image_name}
    click element   //*[@id="ardtools_${type}_image"]/div/div/div[1]
    input text  id:ardtools_${type}_image_imageSelector_searchInput   ${image_name}
    click element  id:${image_name}

Select Multiple Images
    [Arguments]     ${type}    ${image_1}   ${image_2}
    click element  //*[@id="ardtools_${type}_images"]/div/div/div[1]
    input text  id:ardtools_${type}_images_imageSelector_searchInput   ${image_1}
    click element  id:${image_1}
    input text  id:ardtools_${type}_images_imageSelector_searchInput   ${image_2}
    click element  id:${image_2}

Click Submit Button
    click button  ${confirm_button}










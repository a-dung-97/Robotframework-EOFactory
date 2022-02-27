*** Settings ***
Documentation  Test DEM Extraction tool.
Library  Selenium2Library
Variables  env.py
Test Teardown  Close Browser

*** Variables ***
${username}    id:email
${password}    id:password
${btn}   id:login
${wks}  id:workspace_recent_workShare_item_0
${imagery_menu}   id:introduction-Imagery
${imagery_toolkit_icon}    id:image_toolBar_ardButton

${type}     id:ardtools_typeList_down_scale
${name}     down_scale_result
${confirm_btn}  id:ardtools_confirmButton

*** Test Cases ***
DownScale
#login to page
    open browser    ${LOGIN_URL}    chrome
    wait until element is visible  ${username}  5
    maximize browser window
    input text  ${username}     ${USER_EMAIL}
    input text  ${password}     ${USER_PASSWORD}
    click button  ${btn}

#select wks
    wait until element is visible  ${wks}   10
    click element   ${wks}

#click imagery menu
    wait until element is visible  ${imagery_menu}    5
    click element  ${imagery_menu}
    sleep  1

# start use dem extraction
    wait until element is visible  ${imagery_toolkit_icon}     5
    click element  ${imagery_toolkit_icon}
    wait until element is visible  class:ardTool_typeSelector     5
    click element  class:ardTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:ardtools_nameInput  ${name}

    click element  //*[@id="ardtools_downscale_image"]/div/div/div[1]
    input text  id:ardtools_downscale_image_imageSelector_searchInput   down_scale_image
    click element  id:down_scale_image

    input text  id:ardtools_downscale_level  2\n
#    input text  id:ardtools_downscale_level 4\n

    click button  ${confirm_btn}

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}




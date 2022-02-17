*** Settings ***
Documentation  Test Erase tool.
Library  Selenium2Library
Variables  env.py
Test Teardown  Close Browser

*** Variables ***
${username}    id:email
${password}    id:password
${btn}   id:login
${wks}  id:workspace_recent_workShare_item_0
${vector_menu}   id:introduction-Vectors
${vector_toolkit_icon}    id:vector_toolkitIcon

#input
${type}     id:vectortools_typeList_erase
${name}     test erase
${input_features}   input_features
${erase_features}   erase_features
${confirm_btn}  id:vectorTool_confirmButton

*** Test Cases ***
Erase
#login to page and open wks
    open browser    ${LOGIN_URL}    chrome
    wait until element is visible  ${username}  5
    maximize browser window
    input text  ${username}     ${USER_EMAIL}
    input text  ${password}     ${USER_PASSWORD}
    click button  ${btn}
    wait until element is visible  ${wks}   10
    click element   ${wks}

#click vector menu
    wait until element is visible  ${vector_menu}    5
    click element  ${vector_menu}
    sleep  1

# start use clip
    wait until element is visible  ${vector_toolkit_icon}     5
    click element  ${vector_toolkit_icon}
    wait until element is visible  class:vectorTool_typeSelector     5
    click element  class:vectorTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:vectortools_nameInput  ${name}   #name
    click element  //*[@id="vectortools_erase_input_features"]/div/div/div  #input_features
    input text  id:vectortools_erase_input_features_select2_searchInput     ${input_features}
    click element  id:vectortools_erase_input_features_select2_resultList_item_0

    click element   //*[@id="vectortools_erase_erase_features"]/div/div/div     #erase_features
    input text  id:vectortools_erase_erase_features_select2_searchInput     ${erase_features}
    click element  id:vectortools_erase_erase_features_select2_resultList_item_0

#confirm
    click button  ${confirm_btn}

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}





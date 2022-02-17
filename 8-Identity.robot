*** Settings ***
Documentation  Test Identity tool.
Library  Selenium2Library
Variables  env.py
Test Teardown  Close Browser

*** Variables ***
${username}    id:email
${password}    id:password
${btn}   id:login
${wks}  id:workspace_recent_workShare_item_0
${vector_menu}   id:introduction-Vectors
#${join_attributes}
${vector_toolkit_icon}    id:vector_toolkitIcon

#input
${type}     id:vectortools_typeList_identity
${name}     test identity
${input_features}   input_features
${identity_features}   identity_features
${confirm_btn}  id:vectorTool_confirmButton

*** Test Cases ***
Identity
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

# start use identity
    wait until element is visible  ${vector_toolkit_icon}     5
    click element  ${vector_toolkit_icon}
    wait until element is visible  class:vectorTool_typeSelector     5
    click element  class:vectorTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:vectortools_nameInput  ${name}   #name
    click element  //*[@id="vectortools_identity_input_features"]/div/div/div  #input_features
    input text  id:vectortools_identity_input_features_select2_searchInput     ${input_features}
    click element  id:vectortools_identity_input_features_select2_resultList_item_0

    click element  //*[@id="vectortools_identity_indentity_features"]/div/div/div    #identity_features
    input text  id:vectortools_identity_indentity_features_select2_searchInput     ${identity_features}
    click element  id:vectortools_identity_indentity_features_select2_resultList_item_0

    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[3]/div/div/div[1]  #join_attributes
#    press keys  None    All\n     #all
    press keys  None    Only\n    #Only fid
#    press keys  None    No\n      #No fid

    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[4]/div/div/div[1]  #relationship
#    press keys  None    No\n    #No relationships
    press keys  None    Keep\n      #Keep relationships

#confirm
    click button  ${confirm_btn}

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}





*** Settings ***
Documentation  Test Intersect tool.
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
${type}     id:vectortools_typeList_intersect
${name}     test identity
${input_features}   input_features
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

# start use intersect
    wait until element is visible  ${vector_toolkit_icon}     5
    click element  ${vector_toolkit_icon}
    wait until element is visible  class:vectorTool_typeSelector     5
    click element  class:vectorTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:vectortools_nameInput  ${name}   #name
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div/div/div[1]  #input_features
    input text  id:vectortools_intersect_vector     ${input_features}\n
    press keys  id:vectortools_intersect_vector    TAB

#join_attributes
#    press keys  None    All\n     #All
    press keys  None    Only\n    #Only fid
#    press keys  None    No\n      #No fid

 #output_type
    press keys  None    TAB
#    press keys  None    Input\n    #Input
#    press keys  None    Line\n     #Line
    press keys  None    Point\n    #Point

#confirm
    click button  ${confirm_btn}

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}





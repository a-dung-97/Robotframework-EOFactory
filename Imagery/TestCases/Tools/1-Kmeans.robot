*** Settings ***
Documentation  Test Kmeans tool.
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
${type}     id:vectortools_typeList_buffer
${name}     test buffer
${vector}   vector_clip_1

${confirm_btn}  id:vectorTool_confirmButton

*** Test Cases ***
Buffer
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

# start use buffer
    wait until element is visible  ${vector_toolkit_icon}     5
    click element  ${vector_toolkit_icon}
    wait until element is visible  class:vectorTool_typeSelector     5
    click element  class:vectorTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:vectortools_nameInput  ${name}   #name
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div/div[1]/div/div/div
    input text  id:vectortools_buffer_vector_select2_searchInput  ${vector}   #vector
    click element  id:vectortools_buffer_vector_select2_resultList_item_0
    input text  ${distance}     80  #distance
    input text  ${resolution}   10  #resolution
    input text  ${quadsegs}     10  #quadsegs

#    press keys  ${cap_style}    round\n     #round
#    press keys  ${cap_style}    F\n     #flat
    press keys  ${cap_style}    S\n     #square
    press keys  ${cap_style}    TAB

#    press keys  None    B\n   #bevel
#    press keys  None    R\n   #round
    press keys  None    M\n   #mitre

#    đang không xóa được giá trị default và bị thêm mới vào sau
    input text  ${mitre_limit}  3

#confirm
    click button  ${confirm_btn}
    sleep  5

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}





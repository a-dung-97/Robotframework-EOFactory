*** Settings ***
Documentation  Test Union tool.
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
${type}     id:vectortools_typeList_union
${name}     test union
${input_features}   input_features
${confirm_btn}  id:vectorTool_confirmButton

*** Test Cases ***
Union
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

# start use union
    wait until element is visible  ${vector_toolkit_icon}     5
    click element  ${vector_toolkit_icon}
    wait until element is visible  class:vectorTool_typeSelector     5
    click element  class:vectorTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:vectortools_nameInput  ${name}   #name
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div/div/div[1]  #input_features
    # trường hợp chọn nhiều input => ctr+A rồi press BackSpace để xóa texr thừa, sau đó nhập input tiếp theo
    input text  id:vectortools_union_input_features     ${input_features}\n
    press keys  id:vectortools_union_input_features    TAB

#    press keys  None    All\n     #All
    press keys  None    Only\n    #Only fid
#    press keys  None    No\n      #No fid

    press keys  None    TAB
    #Gaps: do trong cả 2 option đều có chứa gaps nên không thể nhập gaps rồi enter như các trường hợp khác => mặc định không chọn thì sẽ vào Gaps.
    press keys  None    No\n     #No gaps

#confirm
    click button  ${confirm_btn}

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}





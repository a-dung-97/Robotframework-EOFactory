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
${image_menu}   id:introduction-Imagery
${image_toolkit_icon}    id:image_toolBar_ardButton

#input
#${type}     id:tools_typeList_buffer
${name}     test kmeans

#${confirm_btn}  id:

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

#click image menu
    wait until element is visible  ${image_menu}    5
    click element  ${image_menu}

# start use kmeans
    wait until element is visible  ${image_toolkit_icon}     5
    click element  ${image_toolkit_icon}
    wait until element is visible   //*[@id="areaBound"]/div/div[2]/div/div/div[1]   5
    click element  //*[@id="areaBound"]/div/div[2]/div/div/div[1]
    press keys  None    Unsupervised\n
    sleep  3
#    click element  ${type}

#    type input


#confirm
#    click button  ${confirm_btn}

*** Keywords ***






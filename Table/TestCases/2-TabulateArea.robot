*** Settings ***
Documentation  Test Tabulate Area tool.
Library  Selenium2Library
Variables  env.py
Test Teardown  Close Browser

*** Variables ***
${username}    id:email
${password}    id:password
${btn}   id:login
${wks}  id:workspace_recent_workShare_item_0
${table_menu}   id:introduction-Table
${table_toolkit_icon}    id:table_toolkitIcon

#input
${type}     id:tabletools_typeList_tabulate_area
${name}     tabulate area 1
${search}   id:imageSelector_searchInput
${mask_value}   76861,61233
${confirm_btn}  id:tableTool_confirmButton
${confim_paycost}     id:notificationTokenDialog_confirmButton

*** Test Cases ***
ZonalStatistics
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

#click table menu
    wait until element is visible  ${table_menu}    5
    click element  ${table_menu}
    sleep  1

#tabulate area
    wait until element is visible  ${table_toolkit_icon}     5
    click element  ${table_toolkit_icon}
    wait until element is visible  class:tableTool_typeSelector     5
    click element  class:tableTool_typeSelector
    sleep  1
    click element  ${type}

    #    type input
    input text  id:tableTool_nameInput  ${name}

    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[1]/div[2]/div/div/div[1]
    input text  id:imageSelector_searchInput    image_clip_1
    wait until element is visible  id:image_clip_1  10
    click element  id:image_clip_1

#    đang bị có 2 id là imageSelector_searchInput (image và mask image) => change id
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[2]/div[2]/div/div/div[1]
    wait until element is visible  id:imageSelector_searchInput     5
    log to console  1111111
    clear element text  id:imageSelector_searchInput
    input text  id:imageSelector_searchInput    mask_image_1
    log to console  222222
    wait until element is visible  id:mask_image_1  10
    click element   id:mask_image_1

    input text  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[3]/div/div/div[1]     ${mask_value}

    click element  id:tableTool_vectorSelector
    click element  id:vector_clip_1
    sleep  1

    click button  ${confirm_btn}

    wait until element is visible  ${confim_paycost}
    click button  ${confim_paycost}
    sleep  2

*** Keywords ***




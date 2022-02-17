*** Settings ***
Documentation  Test Join tool.
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
${type}     id:tabletools_typeList_join
${name}     inner join 12
${search}   id:imageSelector_searchInput
#${join_type}
${first_column}     id:first_column
${second_column}    id:second_column
${confirm_btn}  id:tableTool_confirmButton
${confim_paycost}     id:notificationTokenDialog_confirmButton

*** Test Cases ***
JoinTable
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

# start use join
    wait until element is visible  ${table_toolkit_icon}     5
    click element  ${table_toolkit_icon}
    wait until element is visible  class:tableTool_typeSelector     5
    click element  class:tableTool_typeSelector
    sleep  1
    click element  ${type}

#    type input
    input text  id:tableTool_nameInput  ${name}

    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div[1]/div/div/div[1]
    click element  id:Select first table table_1

    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div[2]/div/div/div[1]
    click element  id:Select second table table_2

    press keys  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div[2]/div/div/div[1]  TAB

#    select join type
    press keys  None    I   #inner join
    press keys  None    L   #left join
    press keys  None    R   #right join
    press keys  None    F   #full join

#select column
    press keys  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div[3]/div/div/div[1]  TAB
    input text  id:first_column     zone\n
    input text  id:second_column    zone\n

    click button  ${confirm_btn}

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}




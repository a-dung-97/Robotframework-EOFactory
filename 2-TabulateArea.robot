*** Settings ***
Documentation  Test TabulateArea tool.
Library  Selenium2Library
Variables  env.py
Test Teardown  Close Browser

*** Variables ***
${type}     id:tabletools_typeList_tabulate_area
${name}     tabulate area 1
${search}   id:imageSelector_searchInput
${confim_paycost}     id:notificationTokenDialog_confirmButton

*** Test Cases ***
TabulateAreaTool
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

#    type input full
#    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[2]/div[2]/div/div/div[1]
#    input text  id:imageSelector_searchInput    image_clip_1
#    wait until element is visible  id:image_clip_1  10
#    log to console  aaaaaaaaaa
#
    click element  id:tableTool_vectorSelector
    click element  id:vector_clip_1
    sleep  1

    click button  ${confirm_btn}

    wait until element is visible  ${confim_paycost}
    click button  ${confim_paycost}
    sleep  2

*** Keywords ***




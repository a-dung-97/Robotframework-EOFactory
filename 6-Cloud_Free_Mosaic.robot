*** Settings ***
Documentation  Test Cloud free mosaic tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     cloud_free_mosaic_result
${image_1}   mosaic_1
${image_2}   mosaic_2

*** Test Cases ***
CloudFreeMosaic
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${cloud_free_mosaic}
    Type Name   ${name}
    Select Multiple Images  cloudFreeMosaic     ${image_1}  ${image_2}

#    press keys  //*[@id="ardtool_cloudFreeMosaic_images"]/div/div/div[1]    TAB
    click element  class:Sort by cloud percentage

    Click Submit Button

*** Keywords ***
#bảo dũng sửa id: ardtool -> ardtools trong cloud free mpsaic
Select Multiple Images
    [Arguments]     ${type}    ${image_1}   ${image_2}
    click element  //*[@id="ardtool_${type}_images"]/div/div/div[1]
    input text  id:ardtool_${type}_images_imageSelector_searchInput   ${image_1}
    click element  id:${image_1}
    input text  id:ardtool_${type}_images_imageSelector_searchInput   ${image_2}
    click element  id:${image_2}




*** Settings ***
Library  Selenium2Library
Variables  ./env.py

*** Variables ***
${confim_paycost}     id:notificationTokenDialog_confirmButton

*** Test Cases ***

*** Keywords ***
Confirm Pay Cost
    wait until element is visible  ${confim_paycost}
    click button  ${confim_paycost}
    sleep  2

*** Settings ***
Documentation  This file contains all the necessary steps to create another Web Testing Framework Skeleton.
Library  Dialogs
Library  String
Library  OperatingSystem
Metadata  Version   0.1

*** Test Cases ***
Start Creating Framework Skeleton
    ${FrameWorkName} =  get value from user  Please Enter FrameWork Name  default_value=Test  hidden=False
    ${DesiredFolderPath} =  get value from user  Please Enter Desire Folder Path where you want to
                            ...                  create Framework  default_value=Test  hidden=False
    create dictionary  ${DesiredFolderPath}
    create dictionary  ${DesiredFolderPath}/CustomLib
    create dictionary  ${DesiredFolderPath}/Resources
    create dictionary  ${DesiredFolderPath}/Results
    create dictionary  ${DesiredFolderPath}/Test Data
    create dictionary  ${DesiredFolderPath}/Tests
    create file  ${DesiredFolderPath}/Tests/${FrameWorkName}.Robot

*** Keywords ***
create file

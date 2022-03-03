*** Settings ***
Documentation  Test Fuzzy Kmeans tool.
Resource  ./Login.robot
Resource  ./Unsupervised/PageObject/Pages.robot
Test Teardown  Close Browser

*** Variables ***
${name}     fuzzy_kmeans_result
${image}   unsupervised_image

*** Test Cases ***
IsodataTool
    Login To Page And Open Workspace
    Click Map Menu
    Click Tools Toolbar
    Select Unsupervised Toolkit
    Select Tool  ${fuzzy_kmeans}
    Type Name  ${name}
    Select Image  fuzzy_kmean     ${image}
    Type Number of Clusters Center  16
    Type Maximum Number of Iterations       21
    Type Movement Threshold     0.02
    Type Background Gray Level Value    1
    Click Submit Button

*** Keywords ***
Type Number of Clusters Center
    [Arguments]  ${clusters}
    input text   ${number_of_clusters_center}   ${clusters}

Type Maximum Number of Iterations
    [Arguments]  ${value}
    input text      ${fuzzy_maximum_number_of_iterations}   ${value}
    press keys  None  TAB

Type Movement Threshold
    [Arguments]  ${value}
    input text  ${fuzzy_movement_threshold}   ${value}
    press keys  None  TAB

Type Background Gray Level Value
    [Arguments]  ${value}
    input text  ${fuzzy_background_gray_level_value}   ${value}



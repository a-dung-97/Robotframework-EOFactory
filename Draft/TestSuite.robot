*** Settings ***
Documentation    A test suite with a single test for try page objects
...
...              against the Wikipedia Site
Resource         Resource.robot
Library  SeleniumLibarry



*** Test Cases ***
Case 317459 demo show 1
    [Documentation]    This Test Case uses a higher level wikipedia resource
    ...                for showing Page Resource.
    [Tags]             ID_317459
    Given open browser to wiki home page
    When search for robot framework
    Then


*** Keywords ***
*** Settings ***
Library                 Selenium2Library
Resource            resources/login.robot
Test Setup          Open login page
Test Teardown    Close Browser

*** Testcases ***
Rule of login failure
    [Template]   Flow of login failure
    demo1    mode
    demo    mode1
    demo1    mode1
    ${EMPTY}    mode
    demo    ${EMPTY}
    ${EMPTY}    ${EMPTY}

*** Keywords ***
Flow of login failure
    [Arguments]    ${username}    ${password}
    Fill in information    ${username}    ${password}
    Login to system
    I will see Error page
    Go To    http://localhost:7272/html/














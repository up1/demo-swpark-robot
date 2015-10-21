*** Settings ***
Library                 Selenium2Library
Resource            resources/login.robot
Suite Setup          Open login page
Suite Teardown   Close Browser
Test Setup           Go to login page
Test Template     Flow of login failure

*** Testcases ***
Wrong Username    demo1    mode
Wrong Password     demo      mode1

*** Keywords ***
Flow of login failure
    [Arguments]    ${username}    ${password}
    Fill in information    ${username}    ${password}
    Login to system
    I will see Error page

Go to login page
     Go To    ${LOGIN PAGE}
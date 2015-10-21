*** Settings ***
Library    CSVLibrary.py
Library                 Selenium2Library
Resource            resources/login.robot
Test Setup          Open and setup data
Test Teardown    Close Browser

*** Testcases ***
Rule of login failure
    [Template]   Flow of login failure
    :FOR  ${user}   in   @{all users}
    \    @{user}[0]    @{user}[1]

*** Keywords ***
Open and setup data
    Prepare data
    Login.Open login page

Prepare data
    ${all users}=    Read CSV File    sample.csv
    Set Test Variable   ${all users}     ${all users}

Flow of login failure
    [Arguments]    ${username}    ${password}
    Login.Fill in information    ${username}    ${password}
    Login.Login to system
    Login.I will see Error page
    Go To    http://localhost:7272/html/















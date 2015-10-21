*** Settings ***
Library    CSVLibrary.py
Library                 Selenium2Library
Resource            resources/login.robot
Test Setup          Open login page
Test Teardown    Close Browser

*** Testcases ***
Read file from csv
    ${all users}=    Read CSV File    sample.csv
    :FOR  ${user}   in   @{all users}
    \    Log    @{user}[0] - @{user}[1]
    \    Flow of login failure    @{user}[0]    @{user}[1]

*** Keywords ***
Flow of login failure
    [Arguments]    ${username}    ${password}
    Fill in information    ${username}    ${password}
    Login to system
    I will see Error page
    Go To    http://localhost:7272/html/
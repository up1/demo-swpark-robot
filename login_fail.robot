*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Testcases ***
Wrong username
    Open login page
    Fill in information    demo1    mode
    Login to system
    I will see Error page

Wrong password
    Open login page
    Fill in information    demo    mode1
    Login to system
    I will see Error page

Wrong username and password
    Open login page
    Fill in information    demo1   mode1
    Login to system
    I will see Error page

Empty username
    Open login page
    Fill in information    ${EMPTY}    mode
    Login to system
    I will see Error page

Empty password
    Open login page
    Fill in information    demo    ${EMPTY}
    Login to system
    I will see Error page

Empty username and password
    [Tags]    testing
    Open login page
    Fill in information    ${EMPTY}    ${EMPTY}
    Login to system
    I will see Error page

*** Keywords ***
Open login page
    Open Browser    http://localhost:7272/html/

Fill in information
     [Arguments]    ${username}    ${password}
     Input Text    username_field    ${username}
     Input Text    password_field    ${password}

Login to system
    Click Button    LOGIN

I will see Error page
    Wait Until Page Contains    Error Page













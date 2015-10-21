*** Settings ***
Library    Selenium2Library


*** Testcases ***
Login sucess
    Open login page
    Fill in information
    Login to system
    I will see Welcome page

*** Keywords ***
Open login page
    Open Browser    http://localhost:7272/html/

Fill in information
     Input Text    username_field    demo
     Input Text    password_field    mode

Login to system
    Click Button    LOGIN

I will see Welcome page
    Wait Until Page Contains    Welcome Page
    Page Should Contain Link    xpath=//p/a
    Wait Until Element Contains    xpath=//p/a    logout
    Click Element    xpath=//p/a













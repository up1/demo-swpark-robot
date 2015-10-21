*** Settings ***
Documentation    dfgsdfgdsfgsdfgsdfgsdfgsdfgsdfgsdfg
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***
${BROWSER}    firefox

${ERROR MESSAGE}    ขออภัย ดูเหมือนว่า somkiat_spns@hotmail.com จะเป็นของบัญชีที่มีอยู่แล้ว คุณต้องการ

*** Testcases ***
Register facebook failure
    [Documentation]    Register facebook failure
    [Tags]    testing    dev
    Open facebook
    Fill in all data
    Apply form
    I see error message

*** Keywords ***
Open facebook
    Open Browser    https://www.facebook.com    browser=${BROWSER}
    Maximize Browser Window

Fill in all data
    Input Text    firstname    somkiat
    Input Text    lastname    puisungnoen
    Input Text    reg_email__    somkiat_spns@hotmail.com
    Input Text    reg_email_confirmation__    somkiat_spns@hotmail.com
    Input Text    reg_passwd__    1234567890
    Select From List By Value    birthday_day    10
    Select From List By Value    month    12
    Select From List By Value    year    1981
    Click Element    u_0_e

Apply Form
    Click Button    สมัครใช้งาน

I see error message
    Wait Until Page Contains    ${ERROR MESSAGE}
    Wait Until Element Contains    reg_error_inner    ${ERROR MESSAGE}
    Wait Until Element Contains    xpath=//div/div[@id='reg_error_inner']    ${ERROR MESSAGE}
    Log    ${ERROR MESSAGE}











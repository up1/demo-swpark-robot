*** Settings ***
Library    Selenium2Library
Test Setup    Open google.com
Test Teardown    Close Browser

*** Variables ***

*** Testcases ***
Search weather today
    Fill in พยากรณ์อากาศวันนี้
    Search
    I see กรมอุตุนิยมวิทยา

Search weather today 02
    Fill in พยากรณ์อากาศวันนี้
    Search
    I see กรมอุตุนิยมวิทยา

*** Keywords ***
Open google.com
    Open Browser    http://www.google.com

Fill in พยากรณ์อากาศวันนี้
    Input Text    q    พยากรณ์อากาศวันนี้

Search
    Click Button    btnG

I see กรมอุตุนิยมวิทยา
    Wait Until Page Contains    กรมอุตุนิยมวิทยา1










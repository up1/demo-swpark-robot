*** Variables ***
${LOGIN PAGE}    http://localhost:7272/html/

*** Keywords ***
Open login page
    Open Browser    ${LOGIN PAGE}

Fill in information
     [Arguments]    ${username}    ${password}
     Input Text    username_field    ${username}
     Input Text    password_field    ${password}


Login to system
    Click Button    LOGIN

I will see Error page
    Wait Until Page Contains    Error Page
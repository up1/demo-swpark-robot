*** Settings ***
Library    Selenium2Library
#Test Teardown    Close Browser

*** Testcases ***
User search product in woman's watch category
    [Tags]    done
    Open Browser    https://www.lazada.co.th/
    Input Text    q    นาฬิกา
    Click Element    css=.header__search__submit
    Title Should Be    นาฬิกา นาฬิกาข้อมือ ผู้ชาย ผู้หญิง ลดราคาถูกสุดๆ | Lazada.co.th
    Click Element    xpath=//a[@class='watches__category-list-item watches__category-women-business']
    Wait Until Page Contains Element    xpath=//div[2]/div[2]/div[2]/div[2]/div[2]/div/a/div[3]/div
    Click Element    xpath=//div[2]/div[2]/div[2]/div[2]/div[2]/div/a/div[3]/div

User add product to cart
    [Tags]    done
    Open Browser    http://www.lazada.co.th/geneva-zd-0039-bk-1266933.html?mp=1
    Input Text    q    นาฬิกา
    Click Element    css=.header__search__submit
    Title Should Be    นาฬิกา นาฬิกาข้อมือ ผู้ชาย ผู้หญิง ลดราคาถูกสุดๆ | Lazada.co.th
    Click Element    xpath=//a[@class='watches__category-list-item watches__category-women-business']
    Wait Until Page Contains Element    xpath=//div[2]/div[2]/div[2]/div[2]/div[2]/div/a/div[3]/div
    Click Element    xpath=//div[2]/div[2]/div[2]/div[2]/div[2]/div/a/div[3]/div
    Click Button    AddToCart
    Wait Until Page Contains Element    xpath=//div/h5
    Wait Until Element Contains    xpath=//div/h5    สินค้า 1 ชิ้น ได้ถูกเพิ่มเข้าไปยังตะกร้าสินค้าของคุณ
    Wait Until Page Contains Element    xpath=//a/span[@class='btn-checkout-text']
    Wait Until Element Contains    xpath=//a/span[@class='btn-checkout-text']    ชำระค่าสินค้า

User checkout product
    [Tags]    testing
    #Begin web test
    Open Browser    https://www.lazada.co.th/

    # Search product
    Input Text    q    นาฬิกา
    Click Element    css=.header__search__submit

    #Category :: woman category
    Title Should Be    นาฬิกา นาฬิกาข้อมือ ผู้ชาย ผู้หญิง ลดราคาถูกสุดๆ | Lazada.co.th
    Click Element    xpath=//a[@class='watches__category-list-item watches__category-women-business']

    #Choose first product
    Wait Until Page Contains Element    xpath=//div[2]/div[2]/div[2]/div[2]/div[2]/div/a/div[3]/div
    Click Element    xpath=//div[2]/div[2]/div[2]/div[2]/div[2]/div/a/div[3]/div

    #Add product to cart
    Wait Until Page Contains Element    AddToCart
    Click Button    AddToCart
    Wait Until Page Contains Element    xpath=//div/h5
    Wait Until Element Contains    xpath=//div/h5    สินค้า 1 ชิ้น ได้ถูกเพิ่มเข้าไปยังตะกร้าสินค้าของคุณ

    #Begin checkout process
    Wait Until Page Contains Element    xpath=//a/span[@class='btn-checkout-text']
    Wait Until Element Contains    xpath=//a/span[@class='btn-checkout-text']    ชำระค่าสินค้า
    Click Element    xpath=//a/span[@class='btn-checkout-text']
    Wait Until Page Contains Element     EmailLoginForm_email
    Input Text    EmailLoginForm_email     somkiat.p@gmail.com
    Click Element    existingCustomerLabel
    Input Text    EmailLoginForm_password    somkiat1234
    Click Button    send
    Wait Until Page Contains Element    ThreeStepShippingAddressForm_first_name
    Input Text    ThreeStepShippingAddressForm_first_name    somkiat puisungnoen
    Input Text    ThreeStepShippingAddressForm_address1    dfsdfsdfsdfsdf
    Input Text    postcodeShipping    10400
    Click Element    cityShipping
    Wait Until Page Contains Element     xpath=//div/ul/li[1]
    Click Element    xpath=//div/ul/li[1]
    Select From List By Value    ThreeStepShippingAddressForm_location_0    44
    Input Text    ThreeStepShippingAddressForm_phone    868696209
    Click Button    send
    Wait Until Page Contains    เลือกตัวเลือกสำหรับการชำระเงิน

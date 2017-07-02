*** Settings ***
Resource    Libs/Setting.robot
Test Setup    Go To Page    /user/login
Test Teardown    Close Browser

*** Testcases ***
List Product Display on Page
    Wait Until Page Contains    Login
    Input Text    email    aj.jammy09@gmail.com
    Input Password    password    123456
    Click button    css=body > div.container > div > ul > li:nth-child(9) > a
    Wait Until Page Contains    ชนิดสินค้า
    Go To    ${URL}/user/userproduct
    Wait Until Page Contains    สินค้า(ไทย)

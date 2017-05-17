*** Settings ***
Resource    Libs/Setting.robot
Resource    POM/firstpage.robot
Test Setup    Go To Page    /
Test Teardown    Close Browser

*** Testcases ***
Fist Page display correct
    Wait Until Page Contains    DGTFarm
    Title Should Be    DGTFarm Online
    Page Should Contain    มิติใหม่สินค้าเกษตรไทยบนโลกออนไลน์
    Page Should Contain    การจับคู่ธุรกิจยุคใหม่ที่เกษตรกรไทยและผู้บริโภคจะมาพบกันในโลกออนไลน์
    Page Should Contain    สมัครสมาชิก
    Page Should Contain    ชมสินค้า
    Page Should Contain    เข้าตลาด

Can Click Open Register
    Wait Until Page Contains    DGTFarm
    Click Element     ${LinkRegister}
    Wait Until Page Contains     สมัครสมาชิก
    Page Should Contain    บุคคลธรรมดา
    Page Should Contain    นิติบุคคล

Can Click See Product
    Wait Until Page Contains    DGTFarm
    Click Element     ${LinkSeeProduct}
    Wait Until Page Contains     ต้องการ
    Page Should Contain    ต้องการขาย
    Page Should Contain    ต้องการซื้อ

Can Click Entry Market
    Wait Until Page Contains    DGTFarm
    Click Element     ${LinkEntryMarket}
    Wait Until Page Contains     ต้องการ
    Page Should Contain    ต้องการขาย
    Page Should Contain    ต้องการซื้อ

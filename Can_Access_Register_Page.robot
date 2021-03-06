*** Settings ***
Resource    Libs/Setting.robot
Resource    POM/chooseregisterpage.robot
Test Setup    Go To Page    /user/chooseregister
Test Teardown    Close Browser

*** Testcases ***
Register Page display correct
    Wait Until Page Contains     สมัครสมาชิก
    Page Should Contain    บุคคลธรรมดา
    Page Should Contain    นิติบุคคล

Can Click Open Personal Register
    Wait Until Page Contains     สมัครสมาชิก
    Click Element     ${LinkPersonalRegister}
    Wait Until Page Contains     สมัครสมาชิก
    Page Should Contain    บุคคลธรรมดา

Can Click Open Company Register
    Wait Until Page Contains     สมัครสมาชิก
    Click Element      ${LinkCompanyRegister}
    Wait Until Page Contains     สมัครสมาชิก
    Page Should Contain    นิติบุคคล

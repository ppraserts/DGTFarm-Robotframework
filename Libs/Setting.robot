*** Settings ***
Library    Selenium2Library  30s

*** Keywords ***
Go To Page
    [Arguments]    ${page}
    Open Browser To Test
    Go To    ${URL}${page}

Open Browser To Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
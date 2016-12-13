*** Settings ***
Test Teardown
Library           Selenium2Library    10.0    1.0    #timeout, implicit_wait
Library           RequestsLibrary
Library           OperatingSystem
Library           Collections
Library           String

*** Variables ***
# Execution specific
${BROWSER}        chrome
${DELAY}          0
${MAIN_URL}       http://localhost:8180/main.html

*** Test Cases ***
Open Browser
    Open Browser    ${MAIN_URL}    ${BROWSER}
     \ \ \ Maximize Browser Window
     \ \ \ Set Selenium Speed     ${DELAY}
    Page Should Contain    "Heading"
    [Teardown]    Close Browser

*** Keywords ***

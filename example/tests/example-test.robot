*** Settings ***
Library           SeleniumLibrary
Test Teardown   Close all browsers


*** Test Cases ***
Open Google and search for ICTU
    Open browser and navigate to Google
    Search for ICTU
    Check search result contains ICTU

*** Keywords ***
Open browser and navigate to Google
    Open Browser    url=https://www.google.com  browser=chrome  alias=none  remote_url=http://hub:4444/wd/hub
    Maximize Browser Window

Search for ICTU
    Input Text    q    ICTU
    Click Element    btnK

Check search result contains ICTU
    Page Should Contain     ICTU
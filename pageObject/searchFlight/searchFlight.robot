*** Settings ***
Resource     ../homePage/homePage.robot
Resource     ../base.robot
Variables    searchFlight-locator.yaml

*** Keywords ***

Click SignIn
    Click Element    ${btnLogin}

Verify Loginpage Appears
    Wait Until Element Is Visible            ${toolbar}
    Wait Until Element Is Visible            ${viewgroup}
    Wait Until Element Is Visible            ${linearLayout}
    Wait Until Element Is Visible            ${username_login}
   
Input Username
    Click Element    ${username_login}
    Input Text       ${username_login}    support@ngendigital.com

Input Password    
    Click Element    ${password_login}
    Input Text       ${password_login}    abc123
    Press Keycode    keycode_enter
    
Click Login
    Click Element    ${loginButton}

Click Button Search
    Wait Until Element Is Visible    ${searchButton}
    Click Element    ${searchButton}

Verify Search Page Appears
    Wait Until Element Is Visible    ${searchLayout}  

Input Flight Number
    Click Element    ${searchbox}
    Input Text       ${searchbox}    DA935
    Click Element    ${searchFlight}

Verify Search Result Appears
    Wait Until Element Is Visible            ${terminal}
    Wait Until Element Is Visible            ${schedule}
    Wait Until Element Is Visible            ${departed}

Input Wrong Flight Number
    Click Element    ${searchbox}
    Input Text       ${searchbox}    DD999
    Click Element    ${searchFlight}

Verify Wrong Input Appears
    Wait Until Element Is Visible            ${failedWidget}
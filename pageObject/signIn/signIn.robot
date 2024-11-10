*** Settings ***
Resource     ../homePage/homePage.robot
Resource     ../base.robot
Variables    signIn-locator.yaml

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

Wrong Input Username
    Click Element    ${username_login}
    Input Text       ${username_login}    Assurance@ngendigital.com

Input Password    
    Click Element    ${password_login}
    Input Text       ${password_login}    abc123

Wrong Input Password
    Click Element    ${password_login}
    Input Text       ${password_login}    qwertyuiop12345

Click Login
    Click Element    ${loginButton}

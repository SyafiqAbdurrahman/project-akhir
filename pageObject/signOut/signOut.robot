*** Settings ***
Resource            ../base.robot
Variables            signout-locator.yaml

*** Keywords ***

Successfully Login with Right Account
    Click Element    ${btnLogin}
    Wait Until Element Is Visible    ${fieldUsername}
    Wait Until Element Is Visible    ${fieldPassword}
    Wait Until Element Is Visible    ${btnSubmit}
    Input Text    ${fieldUsername}    ${username_login}
    Input Text    ${fieldPassword}    ${password_login}
    Click Element    ${btnSubmit}
    Wait Until Element Is Visible    ${accountName}

Click SignOut Button
    Wait Until Element Is Visible    ${btnSignOut}
    Click Element    ${btnSignOut}
    Wait Until Page Does Not Contain Element    ${accountName}
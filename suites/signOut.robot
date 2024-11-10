*** Settings ***

Resource        ../pageObject/signOut/signOut.robot

*** Test Cases ***
Successfully Sign Out From Account
    Open Flight Application
    Successfully Login with Right Account
    Click SignOut Button
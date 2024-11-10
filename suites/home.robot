*** Settings ***

Resource            ../pageObject/homePage/homePage.robot

*** Test Cases ***
Succesfully Open Flight Home Page
    Open Flight Application
    Verify Homepage Appears
    Close Flight Application
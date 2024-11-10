*** Settings ***
Resource        ../pageObject/searchFlight/searchFlight.robot
Resource        ../pageObject/base.robot

** Keywords
## Membuka Flight App
## Melakukan Sign in
## Menekan button Search
## Masukkan Nomer Booking Flight
## Menekan button Search

** Test Cases **
Verify Login Successfully
    Open Flight Application
    homePage.Verify Homepage Appears
    signIn.Click SignIn
    signIn.Verify Loginpage Appears
    signIn.Input Username
    signIn.Input Password
    signIn.Click Login

Verify Search Flight Successfully
    searchFlight.Click Button Search 
    searchFlight.Verify Search Page Appears
    searchFlight.Input Flight Number
    searchFlight.Verify Search Result Appears

Verify Wrong Input Search Flight
    searchFlight.Click Button Search 
    searchFlight.Verify Search Page Appears
    searchFlight.Input Wrong Flight Number
    searchFlight.Verify Wrong Input Appears
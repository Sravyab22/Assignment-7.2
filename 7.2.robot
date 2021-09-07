*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Observe user is able to test sanity flow
   [Tags]  sanity  regression
   User Launch Browser For Flipkart
   # When User arrives on homepage 
   Then  User clicks on searchbox and searches for iPhone12
   And  User clicks on search icon

Observe user is able to test regression flow
   [Tags]  regression
   Given User Launch browser for flipkart
   # When user lands on homepage
   # Then user clicks on searchbox and searches for iPhone12
   # And User clicks on search icon

*** Keywords ***
User launch browser for flipkart
   Open Browser https://www.flipkart.com/  
   Maximize browser window

User clicks on searchbox and search for iPhone12
    Input text id=searchBox iPhone12

User clicks on search icon
   Click Element id=searchButtonInLine



*** Settings ***
Library       SeleniumLibrary
Library    String
Library    OperatingSystem
Library    DateTime

*** Variables ***
${MAIN_PAGE}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login



*** Keywords ***
Open Main Page Using Chrome Browser
  SeleniumLibrary.Open Browser    ${MAIN_PAGE}    chrome    
  SeleniumLibrary.Reload Page
  SeleniumLibrary.Maximize Browser Window
Close Browser In The End of Test Cases
    Sleep    3
    SeleniumLibrary.Close Browser




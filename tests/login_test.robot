*** Settings ***
Library       SeleniumLibrary
Resource    ../general/resource.robot
Resource    ../step_definition/login_steps.robot
Test Setup    Open Main Page Using Chrome Browser
Test Teardown    Close Browser In The End of Test Cases



*** Test Cases ***
Login Using Valid Username and Password
    User Input Valid Username
    User Input Valid Password
    User Click Login
    User Success Login

Login Without Input Username
    User Input Valid Password
    User Click Login
    Error message field is required


Login Without Input password
    User Input Valid Username
    User Click Login
    Error message field is required


Login Without Input password and Username
    User Click Login
    Error message Username and Password is required


Login using Invalid Account
    User Input Invalid Username
    User Input Invalid Password
    User Click Login
    invalid credentials
    
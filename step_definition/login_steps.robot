*** Settings ***
Library       SeleniumLibrary
Resource    ../pages/login_page.robot

*** Keywords ***
User Input Valid Username
    SeleniumLibrary.Wait Until Element Is Visible    ${username_input} 
    SeleniumLibrary.Input Text    ${username_input}    Admin

User Input Valid Password    
    SeleniumLibrary.Wait Until Element Is Visible    ${password_input}
    SeleniumLibrary.Input Password    ${password_input}    admin123


User Input Invalid Username
    SeleniumLibrary.Wait Until Element Is Visible    ${username_input} 
    SeleniumLibrary.Input Text    ${username_input}    Admin2

User Input Invalid Password    
    SeleniumLibrary.Wait Until Element Is Visible    ${password_input}
    SeleniumLibrary.Input Password    ${password_input}    admin1232


User Click Login
    SeleniumLibrary.Wait Until Element Is Visible    ${login_button}
    SeleniumLibrary.Click Button    ${login_button}

User Success Login
    SeleniumLibrary.Wait Until Element Is Visible    ${profile_button}
    SeleniumLibrary.Element Should Be Visible    ${profile_button}

Error message field is required
    SeleniumLibrary.Wait Until Element Is Visible    ${required_username}
    SeleniumLibrary.Element Should Be Visible    ${required_username}

Error message Username and Password is required
    SeleniumLibrary.Wait Until Element Is Visible    ${required_password}
    SeleniumLibrary.Element Should Be Visible    ${required_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${required_username}
    SeleniumLibrary.Element Should Be Visible    ${required_username}

invalid credentials
    SeleniumLibrary.Wait Until Element Is Visible    ${invalid_credential_message}
    SeleniumLibrary.Element Should Be Visible    ${invalid_credential_message}
*** Variables ***
${username_input}    xpath=//input[@name='username']
${password_input}    xpath=//input[@name='password']
${login_button}    xpath=//button[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']    
${required_username}    xpath=(//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message'])[1]
${required_password}    xpath=(//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message'])[2]
${invalid_credential_message}    xpath=//p[contains(@class, 'oxd-text') and contains(@class, 'oxd-text--p') and contains(@class, 'oxd-alert-content-text') and text() = 'Invalid credentials']
${profile_button}    xpath=//span[@class='oxd-userdropdown-tab']
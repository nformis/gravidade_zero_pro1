*Settings
Documentation                   Authentication actions

Resource                        ${EXECDIR}/resources/Base.robot

*Keywords
Go To Login Page
    Go To                       ${BASE_URL}

    Wait For Elements State     css=.login-form  visible  5

Fill Credentials
    [Arguments]                 ${user}

    Fill Text                   id=email  ${user}[email]
    Fill Text                   id=password  ${user}[password]

Submit Credentials
    Click                       css=.submit-button >> text=Entrar

User Should Be Logged In
    [Arguments]                 ${expected_user}
    ${full_name}                Set Variable  ${expected_user}[name] ${expected_user}[lastname]
    ${profile}                  Set Variable  css=a[href="/profile"]

    Wait For Elements State     ${profile}  visible  5
    Get Text                    ${profile}  equal  ${full_name}

Field Should Be Type Email

    Wait For Elements State     css=input[type=email]  visible  5
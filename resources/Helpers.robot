*Settings
Documentation                       Test helpers

*Keywords
Add User Into Database
    [Arguments]                     ${user}

    Connect To DB
    Insert User                     ${user}
    Disconnect From Database
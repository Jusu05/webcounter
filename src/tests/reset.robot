*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Setup  Set Counter Value To Zero
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu  kertaa
*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Setup  Set Counter Value To Zero
Suite Teardown  Close Browser

*** Test Cases ***
Can set an arbitrary value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa
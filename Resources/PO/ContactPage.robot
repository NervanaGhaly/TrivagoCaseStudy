*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CONTACT_URL} =  http://magazine.trivago.com/contact/

*** Keywords ***

Verify Page Load
    [Arguments]
    select window  url=${CONTACT_URL}
    maximize browser window
    wait until page contains  Please give us your feedback and tell us what you want to read about!
    sleep  3s

Fill Form
    #[Arguments]  @{CONTACT_INFO}
    input text  css=#app > div.content-wrapper > div > div > div:nth-child(1) > div:nth-child(2) > div > textarea  @{CONTACT_INFO}[0]
    input text  css=#app > div.content-wrapper > div > div > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > input  @{CONTACT_INFO}[1]
    input text  id=contact-email  @{CONTACT_INFO}[2]
    select checkbox  xpath=//*[@id="confirm"]
    sleep  3s

Click Submit
    click button  css=#app > div.content-wrapper > div > div > div:nth-child(1) > button
    sleep  30s

Verify Message Sent
    wait until page contains  Message Sent Successfully!
    sleep  3s
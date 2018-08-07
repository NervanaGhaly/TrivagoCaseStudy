*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  css=#header > div > div > a

*** Keywords ***
Load
    go to  ${START_URL}

Verify Page Load
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}
    sleep  3s

Click Contact Link
    click link  xpath=//*[@id="footer-main"]/div[1]/div[2]/div/div[2]/a

Select Newsletter Checkbox
    select checkbox  css=#confirm

Enter Email
    input text  xpath=//*[@id="app"]/div[3]/div/div[6]/section/div/div/div[2]/div[3]/div[1]/input  @{SUBSCRIBE_EMAIL}

Click Inspire Me
    click button  xpath=//*[@id="app"]/div[3]/div/div[6]/section/div/div/div[2]/div[3]/div[2]/button

Verify Subscription
    wait until page contains  You are now checked-in!
    sleep  3s
*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Search for Location
    Click Search icon
    Enter Search Term
    Submit Search

Click Search icon
    mouse over  xpath=//*[@id="header"]/div/div/div[2]
    click element  xpath=//*[@id="header"]/div/div/div[2]

Enter Search Term
    #[Arguments]  ${search_term}
    input text  css=#search > div.container-wide > div.input.search-input-wrapper > input  ${SEARCH_TERM}
    sleep  3s

Submit Search
    press key  css=#search > div.container-wide > div.input.search-input-wrapper > input  \\13
    sleep  3s

Go to Destination
    Click Top Left Menu
    Select Destination

Click Top Left Menu
    click element  css=#header > div > div > div.nav-icon
    wait until page contains element  xpath=//*[@id="menu"]


Select Destination
    set focus to element  xpath=//*[@id="menu"]
    click element  xpath=//*[@id="menu"]/div/div/div[1]/div[2]/div/div[1]/div[3]/a/div/div[1]
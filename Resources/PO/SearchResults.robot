*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Search Completed
    wait until page contains  Search Results
    wait until page contains element  xpath=//*[@id="search"]/div[2]
    sleep  5s
*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Load
    wait until page contains element  xpath=//*[@id="app"]/div[3]/div/div[1]/div/div/div[2]/div/div
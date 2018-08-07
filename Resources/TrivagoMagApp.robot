*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/ContactPage.robot
Resource  ./PO/DestinationPage.robot

*** Variables ***


*** Keywords ***

Go To Trivago Magazine Web Page
    LandingPage.Load
    LandingPage.Verify Page Load

#Keywords for test case 1
Search for Location
    TopNav.Search for Location

Verify Search Results
    SearchResults.Verify Search Completed

#Keywords for test case 2
Go To Contact Page
    LandingPage.Click Contact Link
    ContactPage.Verify Page Load

Submit Contact Form
    ContactPage.Fill Form
    ContactPage.Click Submit
    ContactPage.Verify Message Sent

#Keywords for test case 3
Subscribe to Newsletter
    LandingPage.Select Newsletter Checkbox
    LandingPage.Enter Email
    LandingPage.Click Inspire Me
    LandingPage.Verify Subscription

#Keywords for test case 4
Open Top Left Menu
    TopNav.Click Top Left Menu

Navigate to Destination
    TopNav.Go to Destination
    DestinationPage.Verify Page Load
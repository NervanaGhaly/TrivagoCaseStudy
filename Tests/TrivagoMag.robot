*** Settings ***
Documentation  This is Trivago Magazine Test Suite
Resource  ../Resources/TrivagoMagApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  CommonWeb.Begin Web Test
Test Teardown  CommonWeb.End Web Test

# Please copy/paste the below command in Pycharm terminal to run the test suite
# robot -d results tests/TrivagoMag.robot

*** Variables ***
${BROWSER} =  ie
${START_URL} =  http://magazine.trivago.com/

#This is the test data for test case 1
${SEARCH_TERM} =  Paris

#This is the test data for test case 2
@{CONTACT_INFO} =  Hello Text  Nirvana  nervana.adel@gmail.com

#This is the test data for test case 3
@{SUBSCRIBE_EMAIL} =  nervana.adel@gmail.com

*** Test Cases ***
Search for any location on Room 5 by using the search bar
    [Documentation]  Verify that user is able to search by location
    [Tags]  test1
    TrivagoMagApp.Go To Trivago Magazine Web Page
    TrivagoMagApp.Search for Location
    TrivagoMagApp.Verify Search Results


Fill in the contact form and send it
    [Documentation]  Verify that user is able to fill contact form and send it
    [Tags]  test2
    TrivagoMagApp.Go To Trivago Magazine Web Page
    TrivagoMagApp.Go To Contact Page
    TrivagoMagApp.Submit Contact Form

Subscribe to the Newsletter
    [Documentation]  Verify that user is able to subscribe to the Newsletters service
    [Tags]  test3
    TrivagoMagApp.Go To Trivago Magazine Web Page
    TrivagoMagApp.Subscribe to Newsletter

Navigate to a destination through the menu on the top left
    [Documentation]  Verify that user is able to navigate to destination
    [Tags]  test4
    TrivagoMagApp.Go To Trivago Magazine Web Page
    TrivagoMagApp.Open Top Left Menu
    TrivagoMagApp.Navigate to Destination
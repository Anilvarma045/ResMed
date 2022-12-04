*** Settings ***
Library  Selenium2Library
#Resource  ../ResMedResources/ResMedResource.robot




*** Keywords ***
open ResMed Applicaion
    open browser   ${url}   chrome
#   wait until page contains element
    Set Selenium Implicit Wait     5 seconds
    maximize browser window
    capture page screenshot


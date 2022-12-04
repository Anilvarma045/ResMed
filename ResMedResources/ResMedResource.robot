*** Settings ***
Library  Selenium2Library
#Resource  ../ResMedResources/ResMedResource.robot

*** Variables ***
${viststore_button_xpath}    "(//div[@class='product-bottom-wrapper']//following::a)[1]"
${popup_button_xpath}       "//button[@class='leadinModal-close']"



*** Keywords ***
open ResMed Applicaion
    open browser   ${url}   chrome
#   wait until page contains element
    Set Selenium Implicit Wait     5 seconds
    maximize browser window
    capture page screenshot


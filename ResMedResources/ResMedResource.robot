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

open ResMedStore and capture screenshot
#[Arguments]    ${viststore_button_xpath}
    set selenium implicit wait  7 seconds
    click element    ${popup_button_xpath}
    set sleep       5 seconds
    wait until page contains element    (//div[@class='product-bottom-wrapper']//following::a)[1]
    scroll element into view    ${viststore_button_xpath}
    #wait until page contains element    ${viststore_button_xpath}

    click element          ${viststore_button_xpath}
    set selenium speed     5 seconds
    capture page screenshot    shopcartPage.png


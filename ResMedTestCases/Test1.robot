*** Settings ***
Library  Selenium2Library
Resource  ../ResMedResources/ResMedResource.robot


*** Variables ***
${url}       https://www.resmed.co.in/
${Browser}  chrome

*** Test Cases ***
open ResMed Web_Application
    open ResMed Applicaion
    #open ResMedStore and capture screenshot






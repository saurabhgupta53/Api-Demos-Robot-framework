*** Settings ***
Library    AppiumLibrary
Library    Collections    
Library    Process    

Resource    Common/common_kw.robot

Test Setup    Setup and open ApiDemos App

*** Variables ***  


*** Test Cases ***


1.Check Accessbility
    Log    Test 1 Started...  
    #Log To Console    ${name}
    
    Verify if Accessbility is clicked
    Verify if Accessbility Node Provider is Clicked
    Verify if text 'Accessibility/Accessibility Node Provider' is present
    Go Back
    
    
    Verify if Accessibility Node Querying is Clicked
    Verify if text 'Accessibility/Accessibility Node Querying' is present
    Verify if 'Take Out Trash' checkbox is checkable
    Verify if 'Do Laundary' checkbox is checkable
    Verify if 'Conquer World' checkbox is checkable
    Verify if 'Nap' checkbox is checkable
    Verify if 'Do Taxes' checkbox is checkable
    Verify if 'Abolish IRS' checkbox is checkable
    Verify if 'Tea with Aunt Sharon' checkbox is checkable
    Go Back
    
    Verify if Accessibility Service is Clicked
    Verify if 'Enable Clockback' text is present
    Go Back
    
    Verify if Custom View is Clicked
    Verify if 'Enable Talkback' text is present
    Verify if View1 and View2 buttons are clickable
    
2.App
    Log    Test 2 started..    
    
    Verify if App tab is clicked
    Verify if Alert Dialogs is clicked
    
    Verify if OK CANCEL DIALOG WITH MESSAGE is present
    Verify if OK CANCEL DIALOG WITH LONG MESSAGE is present
    Verify if OK CANCEL DIALOG WITH ULTRA LONG MESSAGE is present
    
    Go Back
    
*** Keywords ***

    
        
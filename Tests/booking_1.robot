*** Settings ***
Library    AppiumLibrary  

Test Setup    Setup and open ApiDemos App

*** Variables ***

${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10.0
${ANDROID_DEVICE_NAME}        9449dfda
${ANDROID_APP_PACKAGE}        io.appium.android.apis    
${ANDROID_APP_ACTIVITY}       io.appium.android.apis.ApiDemos
${APPIUM_SERVER1}             http://localhost:4723/wd/hub   


*** Test Cases ***


1.Check Accessbility
    Log    Test 1 Started...  
    Log To Console    ${name}
    
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

Setup and open ApiDemos App
    Open Application    ${APPIUM_SERVER1}    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}    deviceName=${ANDROID_DEVICE_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}    appPackage=${ANDROID_APP_PACKAGE}    appActivity=${ANDROID_APP_ACTIVITY}      
    
Verify if Accessbility is clicked
    Click Element    xpath=//android.widget.TextView[@text='Accessibility']
    
Verify if Accessbility Node Provider is Clicked
    Click Element     xpath=//android.widget.TextView[@text='Accessibility Node Provider']
    
Verify if text 'Accessibility/Accessibility Node Provider' is present
    Text Should Be Visible    Accessibility/Accessibility Node Provider
    
    
    
 Verify if Accessibility Node Querying is Clicked
    Click Element     xpath=//android.widget.TextView[@text='Accessibility Node Querying']
    
Verify if text 'Accessibility/Accessibility Node Querying' is present
    Text Should Be Visible    Accessibility/Accessibility Node Querying    
    
Verify if 'Take Out Trash' checkbox is checkable
    Click Element    xpath=//android.widget.LinearLayout[1]/android.widget.CheckBox
   
Verify if 'Do Laundary' checkbox is checkable
    Click Element    xpath=//android.widget.LinearLayout[2]/android.widget.CheckBox
   
Verify if 'Conquer World' checkbox is checkable
    Click Element    xpath=//android.widget.LinearLayout[3]/android.widget.CheckBox
    
Verify if 'Nap' checkbox is checkable
    Click Element    xpath=//android.widget.LinearLayout[4]/android.widget.CheckBox
   
Verify if 'Do Taxes' checkbox is checkable
    Click Element    xpath=//android.widget.LinearLayout[5]/android.widget.CheckBox
   
Verify if 'Abolish IRS' checkbox is checkable
     Click Element    xpath=//android.widget.LinearLayout[6]/android.widget.CheckBox
    
Verify if 'Tea with Aunt Sharon' checkbox is checkable
     Click Element    xpath=//android.widget.LinearLayout[7]/android.widget.CheckBox
     
   
 Verify if Accessibility Service is Clicked
    Click Element    xpath=//android.widget.TextView[@content-desc="Accessibility Service"]
 Verify if 'Enable Clockback' text is present
    Text Should Be Visible    Enable ClockBack (Settings -> Accessibility -> ClockBack)  
    

Verify if Custom View is Clicked
    Click Element    xpath=//android.widget.TextView[@content-desc="Custom View"]
Verify if 'Enable Talkback' text is present
    Text Should Be Visible     Enable TalkBack (Settings -> Accessibility -> TalkBack)    
Verify if View1 and View2 buttons are clickable
    Click Element   xpath=//android.view.View[@index=1]
    Click Element   xpath=//android.view.View[@index=2]
    

Verify if App tab is clicked
    Click Element    xpath=//android.widget.TextView[@content-desc="App"]
Verify if Alert Dialogs is clicked
    Click Element    xpath=//android.widget.TextView[@content-desc="Alert Dialogs"]
    
Verify if OK CANCEL DIALOG WITH MESSAGE is present
    Click Element   xpath=//android.widget.Button[@content-desc="OK Cancel dialog with a message"]
    Sleep    2s
    Click Element    id=android:id/button1
           
Verify if OK CANCEL DIALOG WITH LONG MESSAGE is present
    Click Element   xpath=//android.widget.Button[@content-desc="OK Cancel dialog with a long message"]
    Sleep    2s   
    Click Element    id=android:id/button1
            
Verify if OK CANCEL DIALOG WITH ULTRA LONG MESSAGE is present
    Click Element    xpath=//android.widget.Button[@content-desc="OK Cancel dialog with ultra long message"] 
    Sleep    2s   
    Click Element    id=android:id/button1
 
#Verify if LIST DIALOG WITH MESSAGE is present and list elemets are clickable
#erify if PROGRESS DIALOG is present
#Verify if SINGLE CHOICE LIST is present and radio buttons are clickable
#Verify if REPEAT ALARM DIALOG is present and checkboxes are checkable
#Verify if TEXT ENTRY DIALOG is present and text is entered

*** Keywords ***


Setup and open ApiDemos App
    ${androiddriver1}=     Open Application    ${Device.pocof1.Server}    automationName=${Device.pocof1.Automation}    platformName=${Device.pocof1.Platform_Name}    deviceName=${Device.pocof1.Device_Name}    platformVersion=${Device.pocof1.Platform_Version}    appPackage=${Device.pocof1.App_package}    appActivity=${Device.pocof1.App_activity}      
    Set Suite Variable    ${androiddriver1}
        
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
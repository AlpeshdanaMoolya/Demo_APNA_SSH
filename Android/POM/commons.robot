*** Settings ***
# Library  AppiumLibrary
# Resource  ../Locators/Text.robot
# Resource  ../Locators/Variables.robot
Resource  ../Capablities/Desred_cap.robot
# Library    Zoomba.APILibrary
# Library    Zoomba.GUILibrary
# Library    Zoomba.SOAPLibrary
Library    Zoomba.MobileLibrary
Library    BuiltIn
Library  String

# Library    Zoomba.DesktopLibrary

*** Keywords ***
OpenApnaApp
   Open Application  http://localhost:4723/wd/hub  platformName=${platformName}  deviceName=${deviceName}  appPackage=${appPackage}  appActivity=${appActivity}


Wait for Element
   [Arguments]  ${element}
   Wait Until Page Contains Element  ${element}  timeout=60s

Wait for and click on Element
  [Arguments]   ${element} 
  Wait Until Page Contains Element  ${element}  timeout=60s
  Click Element  ${element} 

Input Test Data
  [Arguments]   ${element}   ${value}
  Input Text  ${element}  ${value}

Click Test_data
  [Arguments]  ${element}
  Click Text   ${element}
  
Click A Specific Point
  [Arguments]  ${element1}  ${element2}    
  Click A Point   x=${element1}  y=${element2}  duration=100


Random_no
   ${user_no}=   generate random string  10  [NUMBERS]
   Set Global Variable  ${Mobile_no}  ${user_no}

write_variable_in_file
  [Arguments]  ${variable}
  Create File  ${EXECDIR}/file_with_variable.robot  ${variable}
  


mobile_login
  ${variable}=    Get File  file_with_variable.robot
  Log to console  ${variable}
  ${Value}=   Get Variable Value  ${variable}
  log to console  ${Value}
  Set Global Variable  ${Login_no}  ${Value}

Random_otp
   ${otp_1}  generate random string  1  [NUMBERS]
   Set Global Variable  ${OTP_NO}  ${otp_1}


Close Apna Application
    Close Application
   
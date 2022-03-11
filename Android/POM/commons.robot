*** Settings ***
# Library  AppiumLibrary
# Resource  ../Locators/Text.robot
# Resource  ../Locators/Variables.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../Test_data/Loggedin_user.robot
Resource  ../Locators/User_login_Variable.robot
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


Enter_Mobile_no
  # Fetch From Left  ${user_no}  marker
   
   Wait for and click on Element  ${editText}    
   Input Test Data   ${editText}  ${Login_No}

   Wait for and click on Element  ${submit_btn}  
   Wait for Element  ${otpBtn1}
   Input Test Data  ${otpBtn1}  ${otp_1}
   Input Test Data  ${otpBtn2}  ${otp_2}
   Input Test Data  ${otpBtn3}  ${otp_3}
   Input Test Data  ${otpBtn4}  ${otp_4}

  





Close Apna Application
    Close Application
   
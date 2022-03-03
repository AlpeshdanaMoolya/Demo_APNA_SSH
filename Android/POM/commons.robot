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
   Wait for and click on Element  ${editText}     
   Input Test Data  ${editText}  ${Login_No}  
   Wait for and click on Element  ${submit_btn}  
   Wait for and click on Element  ${otpBtn1}
   Input Test Data  ${otpBtn1}  ${otp_Value1}
   Input Test Data  ${otpBtn2}  ${otp_Value2}
   Input Test Data  ${otpBtn3}  ${otp_Value3}
   Input Test Data  ${otpBtn4}  ${otp_Value4}

for_loop
   [Arguments]  ${element1}  ${VALUES} 
   FOR	${element1}	IN	@{VALUES}
   Run Keyword If	'${element1}' == 'CONTINUE'	Continue For Loop
   Do Something	${element1}	
   END	


Close Apna Application
    Close Application


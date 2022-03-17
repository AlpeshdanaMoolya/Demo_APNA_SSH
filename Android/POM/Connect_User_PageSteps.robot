*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/user_connectVar.robot
Resource  ../Test_data/ConnectToUser.robot
Resource  ../POM/commons.robot

Resource  ../POM/loginPageSteps.robot

*** Keywords ***

openapnapp
   OpenApnaApp

Login__Mobile_ConnectUser  
   mobile_login  
   Random_otp
   Wait for and click on Element  ${editText}  
   Input Test Data   ${editText}  ${Login_No}
   Wait for and click on Element  ${Enter_btn}  
   Wait for Element  ${otpBtn1}
   Input Test Data  ${otpBtn1}  ${OTP_NO}
   Input Test Data  ${otpBtn2}  ${OTP_NO}
   Input Test Data  ${otpBtn3}  ${OTP_NO}
   Input Test Data  ${otpBtn4}  ${OTP_NO}
   Element_visiblity  ${connectBtn}
Open Connect Page

   Wait for and click on Element  ${connectBtn}
   Wait for and click on Element  ${rightArrowBtn}
   Wait for and click on Element  ${rightArrowBtn}
   Wait for and click on Element  ${rightArrowBtn}
   
#  Wait for and click on Element  ${clickElsewhere}  
   Click A Specific Point  533  1337  
   Click A Specific Point  533  1337  
   Click A Specific Point  533  1337 
   
#    Scroll Down  ${waitForIt}
   Wait for Element  ${waitForIt}
   Sleep  10s
   Click Test_data  ${FriendConnect}
   Wait for and click on Element  ${clickToConnect}
   Element_visiblity  ${backBtn}
   Wait for and click on Element  ${backBtn}
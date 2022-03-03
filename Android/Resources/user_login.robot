*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Test_data/Loggedin_user.robot
Resource  ../Locators/User_login_Variable.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../POM/commons.robot

*** Keywords ***

openapnapp
   OpenApnaApp

enter mobile number 
   Wait for and click on Element  ${editText}     
   
   Input Test Data  ${editText}  ${Login_No}  
   Wait for and click on Element  ${submit_btn}  
   Wait for and click on Element  ${otpBtn1}

   Input Test Data  ${otpBtn1}  ${otp_Value1}
   
   Input Test Data  ${otpBtn2}  ${otp_Value2}
   
   Input Test Data  ${otpBtn3}  ${otp_Value3}
   
   Input Test Data  ${otpBtn4}  ${otp_Value4}
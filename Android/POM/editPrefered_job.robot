*** Settings ***
Library    Zoomba.MobileLibrary
Library    String
Resource  ../POM/commons.robot
Resource  ../POM/userReg_pageSteps.robot
Resource  ../Locators/edit_preferredjob.robot
Resource  ../Test_data/edit_preferredJob.robot

*** Keywords ***
# Launch_Login_Application
#     OpenApnaApp

editJob__Mobile_no  
   mobile_login  
   Random_otp
   Wait for and click on Element  ${editText}  
   Input Test Data   ${editText}  ${Login_No}
   Wait for and click on Element  ${Enter_btn}  
   Wait for Element  ${otpBtn1}
   Input Test Data  ${otpBtn1}  ${OTP_NO}
   Input Test Data  ${otpBtn2}  ${OTP_NO}
   Input Test Data  ${otpBtn3}  ${OTP_NO}
   Element_visiblity  ${otpBtn4} 
   Input Test Data  ${otpBtn4}  ${OTP_NO}


Editjob_Selection
   Wait for and click on Element  ${editJob}  
   Wait for and click on Element  ${remove_1_job}  
   
   Scroll Down To Text  ${Select NewJob Role1}  exact_match=False  swipe_count=2
   Click Test_data  ${Select NewJob Role1}
   Click Test_data  ${Select NewJob Role2}
   Wait for and click on Element  ${save_jobBtn}  

   Sleep  30s
   

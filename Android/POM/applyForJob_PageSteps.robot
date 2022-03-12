*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/Applyforjob_Var.robot
Resource  ../Test_data/JobApply.robot
Resource  ../POM/commons.robot
Resource  ../POM/loginPageSteps.robot
*** Keywords ***

openapnapp
   OpenApnaApp


Login__Mobile_ApplyJob
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

Search_job
   Wait for and click on Element  ${search by title,company,ex-clerk}
   Wait for Element  ${searchinputboxclick}
   Input Test Data   ${searchinputboxclick}  ${search_Job}
   Wait for and click on Element  ${tv_PopularJobs}
   Wait for and click on Element  ${select_job}
   Wait for and click on Element  ${apply for jobid}
   Wait for and click on Element  ${job specific Question Aadhar 1}
   Wait for and click on Element  ${click Next Btn}
   Wait for and click on Element  ${agree_btn}
   Click Test_data  ${click_outside}
   Wait for and click on Element  ${yes_i_talkHR}
   Sleep  10S
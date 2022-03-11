*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Locators/Applyforjob_Var.robot
Resource  ../Test_data/JobApply.robot
Resource  ../POM/commons.robot

*** Keywords ***

openapnapp
   OpenApnaApp

applyJob_Login
   Enter_Mobile_no

Search_job
   Wait for and click on Element  ${search by title,company,ex-clerk}
   Wait for Element  ${searchinputboxclick}
   Input Test Data   ${searchinputboxclick}  ${search_Job}
   Wait for and click on Element  ${tv_PopularJobs}
   Wait for and click on Element  ${selectAdminjobid}
   Wait for and click on Element  ${apply for jobid}
   Wait for and click on Element  ${job specific Question Aadhar 1}
   Wait for and click on Element  ${click Next Btn}
   Wait for and click on Element  ${agree_btn}
   Click Test_data  ${click_outside}
   Wait for and click on Element  ${yes_i_talkHR}
   Sleep  10S
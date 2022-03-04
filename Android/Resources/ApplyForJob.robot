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
    
Searchforajob
    Wait for and click on Element  ${search by title,company,ex-clerk}
    Wait for and click on Element  ${searchinputboxclick}
    Input Test Data  ${searchinputboxclick}   ${search for job via search box}
    Wait for Element  ${tv_PopularJobs}
    Click Element   ${tv_PopularJobs}
    Wait for and click on Element  ${selectAdminjobid}
   #  Click Test_data  ${job_title}
    Wait for and click on Element  ${apply for jobid}
    # English questions
    Wait for and click on Element  ${job specific Question Aadhar 1}
    Wait for and click on Element  ${job specific Question Aadhar 1}
    Wait for and click on Element  ${job specific Question Aadhar 1}
    Wait for and click on Element  ${job specific Question Aadhar 1}
    
    Wait for and click on Element  ${click Next Btn}
    Wait for and click on Element  ${agree_btn}
    
   #  Wait for and click on Element  ${back_btn}

   #  Click Test_data  ${click_outside}
   #  Wait for and click on Element  ${yes_i_talkHR}


    # Wait for and click on Element  ${job specific Question English 2}
    # Wait for and click on Element  ${click Next Question Btn}
    # Wait for and click on Element  ${job specific Question English 3}
    # Wait for and click on Element  ${click Next Question Btn}
    # Wait for and click on Element ${show more job} 30
    # Click Test_data  ${show more job text var}
    # #Skills Question
    # Wait for and click on Element  ${job specific Question Sills 1}
    # Wait for and click on Element  ${click Next Question Btn}
    # Wait for and click on Element  ${job specific Question Sills 2}
    # Wait for and click on Element  ${click Next Question Btn}
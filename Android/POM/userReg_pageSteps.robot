*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Test_data/user_Reg_data.robot
Resource  ../Locators/user_Registration_Variable.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../POM/commons.robot
Library  BuiltIn


*** Keywords ***
Launch_Application
    OpenApnaApp


New__Mobile_no
   Random_no
   Random_otp
   Log to console  ${Mobile_no}
   run keyword if  '${Mobile_no}' == 'NUMBERS'   write_variable_in_file  ${Mobile_no}
   write_variable_in_file  ${Mobile_no}
#    Log to console  ${OTP_NO}
   Wait for Element  ${editText}  
   Element Should Be Visible  ${editText}  loglevel= info 
   Input Test Data   ${editText}  ${Mobile_no}
   Wait for and click on Element  ${Enter_btn} 
   Wait for Element  ${otpBtn1}
   Input Test Data  ${otpBtn1}  ${OTP_NO}
   Input Test Data  ${otpBtn2}  ${OTP_NO}
   Input Test Data  ${otpBtn3}  ${OTP_NO} 
   Input Test Data  ${otpBtn4}  ${OTP_NO}
   Wait for Element  ${selectEngLang}
   Element_visiblity  ${selectEngLang} 
  

selectLanguage
    Wait for and click on Element  ${selectEngLang}
    Click Test_data  ${textLang}
    Wait for and click on Element  ${continue} 
    Wait for and click on Element  ${LetsGoBtn} 
    Wait for Element  ${NameBtn}
    Element_visiblity  ${NameBtn} 

profileCreation
    Wait for and click on Element  ${NameBtn}  
    Input Test Data  ${NameBtn}  ${NameValue}
    Wait for and click on Element  ${CityBtn}  
    Wait for and click on Element  ${SearchBtn}  
    Input Test Data  ${SearchBtn}  ${CityValue}
    Click Test_data  ${CityNameBtn} 
    Wait for Element  ${citySelectID}  
    Input Test Data  ${waitCity}  ${search_Live_City}  
    Wait for and click on Element  ${citySelectID}  
    # Wait for and click on Element  ${AcharyaId}  
    # Click Text  ${selectCity}
    Wait for and click on Element  ${gender}
    Wait for and click on Element  ${nextBtn}
    Wait for Element  ${yesbtnId}
    Element_visiblity  ${yesbtnId} 

experienceDetails
    # Wait for and click on Element  ${fresherBtn}
    # Wait for and click on Element  ${continueBtn}

    Wait for and click on Element  ${yesbtnId}
    Wait for and click on Element  ${clickjobtitle}
    Input Test Data  ${enterJobTitleId}  ${enterJobTitle}
    Wait for and click on Element  ${enterCompanyName}    
    Wait for and click on Element  ${enterCompanyName}
    Input Test Data  ${enterCompanyName}  ${enterCompanyNameValue}
    Wait for and click on Element  ${enterCompanyName}
    Click Test_data  ${Total_Exp} 
    Click Test_data  ${salary}
    Wait for and click on Element  ${nextbtnwork}
    Wait for Element  ${educationDropDown}
    Element_visiblity  ${educationDropDown} 

educationDetails
    Wait for and click on Element  ${educationDropDown}  
    Click A Specific Point  234  1218  
    # Wait for and click on Element  ${educationDropDown}
    Wait for and click on Element  ${nextbtnwork}
    Input Test Data  ${clickDegree}  ${degreeValue}
    Input Test Data  ${ClickCollegeName}  ${Entercollegename}
    Wait for and click on Element  ${select_University}
    Wait for Element  ${contBtn}
    Click Test_data  ${edu_next}
    Wait for Element   ${waittilljoblistdiplayed}
    Element_visiblity  ${waittilljoblistdiplayed} 
    

preferedjobSelection
    Wait for and click on Element  ${waittilljoblistdiplayed}  
    Click Test_data  ${select first job role}
    Click Test_data  ${select Second Job Role}
    Element_visiblity  ${savejobDetailBtn}
    Wait for and click on Element  ${savejobDetailBtn}
    Wait for Element  ${choosefromgallerybtn}
    Element_visiblity  ${choosefromgallerybtn} 
    
ProfilePicture_Uploading
    Wait for and click on Element  ${choosefromgallerybtn}
    Wait for and click on Element  ${Allowbtn}
    Wait for Element  ${folder_Btn}
    Click Test_data  ${FolderName}
    Wait for and click on Element  ${selectImage}
    Wait for and click on Element  ${crop_btn}
    # Click Test_data  ${crop_txt}
    Wait for Element  ${btndone}
    Click Test_data  ${done_btn}
    # Wait for and click on Element  ${skipPhoto}
    
    Wait for and click on Element  ${btnSeeJobs}
    # Element_visiblity  ${btnSeeJobs}
    
    

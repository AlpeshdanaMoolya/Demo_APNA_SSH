*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Test_data/user_Reg_data.robot
Resource  ../Locators/user_Registration_Variable.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../POM/commons.robot


*** Keywords ***
Launch_Application
    OpenApnaApp


New__Mobile_no
   Enter_Mobile_no


# selectLanguage
#     Wait for and click on Element  ${selectEngLang}
#     Click Test_data  ${textLang}
#     Wait for and click on Element  ${continue}
#     Wait for and click on Element  ${LetsGoBtn}   

# profileCreation
#     Wait for and click on Element  ${NameBtn}  
#     Input Test Data  ${NameBtn}  ${NameValue}
#     Wait for and click on Element  ${CityBtn}  
#     Wait for and click on Element  ${SearchBtn}  
#     Input Test Data  ${SearchBtn}  ${CityValue}
#     Click Test_data  ${CityNameBtn} 
#     Wait for Element  ${citySelectID}  
#     Input Test Data  ${waitCity}  ${search_Live_City}  
#     Wait for and click on Element  ${citySelectID}  
#     # Wait for and click on Element  ${AcharyaId}  
#     # Click Text  ${selectCity}
#     Wait for and click on Element  ${gender}
#     Wait for and click on Element  ${nextBtn}

# experienceDetails
#     # Wait for and click on Element  ${fresherBtn}
#     # Wait for and click on Element  ${continueBtn}

#     Wait for and click on Element  ${yesbtnId}
#     Wait for and click on Element  ${clickjobtitle}
#     Input Test Data  ${enterJobTitleId}  ${enterJobTitle}
#     Wait for and click on Element  ${enterCompanyName}    
#     Wait for and click on Element  ${enterCompanyName}
#     Input Test Data  ${enterCompanyName}  ${enterCompanyNameValue}
#     Wait for and click on Element  ${enterCompanyName}
#     Click Test_data  ${Total_Exp} 
#     Click Test_data  ${salary}
#     Wait for and click on Element  ${nextbtnwork}

# educationDetails
#     Wait for and click on Element  ${educationDropDown}  
#     Click A Specific Point  234  1218  
#     # Wait for and click on Element  ${educationDropDown}
#     Wait for and click on Element  ${nextbtnwork}
#     Input Test Data  ${clickDegree}  ${degreeValue}
#     Input Test Data  ${ClickCollegeName}  ${Entercollegename}
#     Wait for and click on Element  ${contBtn}
    

# preferedjobSelection
#     Wait for and click on Element  ${waittilljoblistdiplayed}  
#     Click Test_data  ${select first job role}
#     Click Test_data  ${select Second Job Role}
#     Wait for and click on Element  ${savejobDetailBtn}
    
# ProfilePicture_Uploading
#     Wait for and click on Element  ${choosefromgallerybtn}
#     Wait for and click on Element  ${Allowbtn}
#     Wait for Element  ${folder_Btn}
#     Click Test_data  ${FolderName}
#     Wait for and click on Element  ${selectImage}
#     Wait for Element  ${crop_btn}
#     Click Test_data  ${crop_txt}
#     Wait for Element  ${btndone}
#     Click Test_data  ${done_btn}
#     # Wait for and click on Element  ${skipPhoto}
#     Wait for and click on Element  ${btnSeeJobs}
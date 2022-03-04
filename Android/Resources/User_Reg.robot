*** Settings ***
Library    Zoomba.MobileLibrary
Resource  ../Test_data/user_Reg_data.robot
Resource  ../Locators/user_Registration_Variable.robot
Resource  ../Capablities/Desred_cap.robot
Resource  ../POM/commons.robot

*** Keywords ***
openapnapp
   OpenApnaApp

NewUser_Registration
   Enter_Mobile_no

    
selectLanguage
    Wait for and click on Element  ${selectEngLang}
    Click Test_data  ${textLang}
    Wait for and click on Element  ${continue}
    Wait for and click on Element  ${LetsGoBtn}   

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

experienceDetails
    Wait for and click on Element  ${fresherBtn}
    Wait for and click on Element  ${continueBtn}

    # Wait for and click on Element  ${yesbtnId}  
    # Click Test_dataClick Test_data}
    # Wait for and click on Element ${totalWorkExpirence}
    # Wait for and click on Element  ${addexpFromDropdown}
    # Wait for and click on Element  ${clickjobtitle}
    # Input Test Data  ${enterJobTitleId}  ${enterJobTitle}
    # Wait for and click on Element  ${selectJobTitle}    
    # Wait for and click on Element  ${selectJobTitle}
    # Input Test Data  ${enterCompanyName}  ${enterCompanyNameValue}
    # Wait for and click on Element  ${nextbtnwork}

educationDetails
    Wait for and click on Element  ${educationDropDown}  
    Click A Specific Point  234  1218  
    Wait for and click on Element  ${educationDropDown}
    Wait for and click on Element  ${edudropdown}
    # Input Test Data  ${clickDegree}  ${degreeValue}
    # Input Test Data  ${ClickCollegeName}  ${Entercollegename}
    Wait for and click on Element  ${contBtn}
    

preferedjobSelection
    Wait for and click on Element  ${waittilljoblistdiplayed}  
    Click Test_data  ${select first job role}
    Click Test_data  ${select Second Job Role}
    Wait for and click on Element  ${savejobDetailBtn}
    
Profile Pic Uploading
    Wait for and click on Element  ${choosefromgallerybtn}
    Wait for and click on Element  ${Allowbtn}
    Wait for and click on Element  ${clickDownloadBtn}  
    
    # Click Test_data  ${FolderName}
    Wait for and click on Element   ${selectImage}
    Wait for and click on Element  ${crop accept button}
    # Click Test_data  ${continue button text}
    Wait for Element  ${btndone}
    Click Test_data  ${done_btn}
    # Wait for and click on Element  ${skipPhoto}
    Wait for and click on Element  ${btnSeeJobs}
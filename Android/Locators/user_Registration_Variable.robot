*** Variables *** 

${editText}  id=et_login_number
#Select Language
${selectEngLang}  id=tv_lang_head

${continue}  id=btn_continue

#Profile Creation
${LetsGoBtn}  id=act_make_card_btn_let_go

${NameBtn}  id=act_profile_info_et_full_name

${CityBtn}  id=act_profile_info_et_city

${waitCity}  id=act_select_location_etSearchLocation

${citySelectID}  id=row_interested_job_tv_title

${SearchBtn}  id=search_src_text


${gender}   id=iv_male_tick
${nextBtn}  id=act_profile_info_btn_continue

#Experience Details
${yesbtnId}  id=act_education_btn_experience

${totalWorkExpirence}  id=act_education_et_total_exp
${addexpFromDropdown}  id=row_card_img_profile
${clickjobtitle}  id=act_profile_info_et_job_title

${selectJobTitle}  id=act_education_et_total_exp
${enterJobTitleId}  id=act_profile_info_et_job_title
${enterCompanyName}  id=act_profile_info_et_company_name

${salrybarid}  id=act_education_seekbar_salary


${fresherBtn}  id=act_education_btn_fresher


#Education Details 
${educationDropDown}  id=et_education  
${edudropdown}  id=tv_education_detail_info
${clickDegree}  id=et_degree
${nextbtnwork}  id=act_education_btn_continue
${ClickCollegeName}  id=et_college

${contBtn}  id=act_education_btn_continue

#Select Prefered Job
${waittilljoblistdiplayed}  id=tv_title

${savejobDetailBtn}  id=btn_save


#image upload page
${choosefromgallerybtn}  id=tv_chose_from_gallery
${Allowbtn}  id=com.android.permissioncontroller:id/permission_allow_button
${folder_Btn}  id=com.google.android.apps.photos:id/title


${selectImage}  xpath=//android.view.ViewGroup[@content-desc="Photo taken on Mar 10, 2022 10:43:17 AM"]




${crop_btn}   id=ucrop_btn_crop

${btndone}  id=act_profile_info_btn_continue
${btnSeeJobs}  id=llcSeeJobs


# ${EXAMPLE_VAR} =	Set Variable	${user_no}

${otp_1}=   generate random string  1  [NUMBERS]
${otp_2}=   generate random string  1  [NUMBERS]
${otp_3}=   generate random string  1  [NUMBERS]
${otp_4}=   generate random string  1  [NUMBERS]
# ${skipPhoto}  id=tv_skip_photo
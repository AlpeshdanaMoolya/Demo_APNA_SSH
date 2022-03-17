*** Variables ***
#Searchoxjobsectionpage
${Search_Input1}  id=etSearchJobs
${searchinputbox}  id=etSearch
${tv_PopularJobs}  id=tvPopularJobs

${select_job}   id=tvJobTitle
${back_btn}  id=ivBack
${apply for jobid}    id=frag_job_det_tvTalkWithHR
${job specific Question Aadhar 1}   id=tvOption1
${click Next Btn}  id=fab_next_question
${agree_btn}   id=tv_call_hr_agree
${Click_outside}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.TextView

${callHR_Btn}   id=frag_job_det_tvTalkWithHR
${end_call}  id=End call
${yes_i_talkHR}  id=dlg_call_hr_llYes
# ${show more job}  id=ActionSecondary
# ${show more job text var}  Show More Jobs


# user Job type flow
${change job type id btn}  id=category_img

${search input job type}  id=et_search_job_type

${job select Civil Engineer}  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[7]/android.widget.TextView
# Mumbai Region, Agar bazar, User with fresher and 10th below passed, account admin, document aadhar card
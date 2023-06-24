#delimit ;
 
* Edit the import statement to reference the data file on your computer.;
 
import delimited
tucaseid
tr1intst
tr2intst
trfnlout
trincen2
tuavgdur
tua_id
tucpsdp
tuc_id
tudqual2
tuincent
tuintdqual
tuintid
tuintrodate
tuintropanmonth
tuintropanyear
tulngskl
tutotactno
tuv_id
 using c:\atuscase_2019.dat, stringcols(1) ;
 
label variable tr1intst "Interview status 1";
label variable tr2intst "Interview status 2";
label variable trfnlout "Final outcome code";
label variable trincen2 "Incentive expansion case";
label variable tuavgdur "Average duration of all reported diary activities (in minutes)";
label variable tua_id "Unique anonymous adjudicator ID";
label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tucpsdp "Is the ATUS designated person the same as the CPS respondent?";
label variable tuc_id "Unique anonymous coder ID";
label variable tudqual2 "Collected from interviewer after interview: why do you think the data should not be used?";
label variable tuincent "Incentive/non-incentive case";
label variable tuintdqual "Collected from interviewer after interview: is there any reason this interview should not be used?";
label variable tuintid "Unique anonymous ATUS interviewer ID";
label variable tuintrodate "Day of month in which the case was introduced (panel day)";
label variable tuintropanmonth "Month in which the case was introduced (panel month)";
label variable tuintropanyear "Year in which the case was introduced (panel year)";
label variable tulngskl "Non-English language";
label variable tutotactno "Total number of activities reported in diary";
label variable tuv_id "Unique anonymous verifier ID";
 
label define labeltr1intst
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Complete interview or sufficient partial"
2 "Eligible non-interview (refusal, noncontact, other non-interview)"
3 "Not eligible"
4 "Unknown eligibility"
;
label define labeltr2intst
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Complete interview"
2 "Sufficient partial"
3 "Refusal"
4 "Noncontact"
5 "Other non-interview"
6 "Not eligible"
7 "Unknown eligibility"
;
/* Stata will not process these values.
label define labeltrfnlout
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1.001 "Complete interview"
2.001 "Sufficient partial"
20.011 "Not eligible: designated person underage"
20.022 "Not eligible: designated person in Armed Forces"
20.015 "Not eligible: designated person not a household member"
20.007 "Not eligible: vacant"
20.005 "Not eligible: not used as a regular residence"
21.001 "Other: designated person institutionalized, unavailable through closeout"
21.002 "Other: designated person absent, ill, or hospitalized - unavailable through closeout"
21.003 "Not eligible: designated person moved out"
22.002 "Unknown eligibility: sample unit not found/unreached"
24.001 "Other: language barrier"
25.001 "Other: unconverted hearing barrier"
172.001 "Not eligible: removed from sample"
172.002 "Other: invalid input"
176.001 "Refusal: Congressional case"
179.001 "Refusal: hostile breakoff"
181.001 "Refusal: refusal by designated person or gatekeeper"
183.001 "Unknown eligibility: exceeded unproductive call maximum"
188.001 "Noncontact: incomplete callbacks"
188.002 "Noncontact: temporarily unavailable (absent, ill, or hospitalized)"
188.003 "Not eligible: temporarily unavailable (institutionalized)"
191.001 "Other: unresolved language barrier"
193.001 "Unknown eligibility: privacy detectors"
194.001 "Noncontact: never contacted, confirmed number"
195.001 "Unknown eligibility: never contacted, unconfirmed number"
199.001 "Unknown eligibility: never tried, no telephone number household"
230.001 "Refusal: diary contains less than 5 activities"
231.001 "Refusal: don't know/refuse more than 180 diary minutes"
232.001 "Refusal: diary contains less than 5 activities and don't know/refuse more than 180 diary minutes"
233.001 "Refusal: other data quality issues"
;
*/
label define labeltrincen2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Case was not part of incentive expansion"
1 "Case was part of incentive expansion"
;
label define labeltucpsdp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes, same person"
2 "No, different person"
;
label define labeltudqual2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Respondent intentionally providing wrong answer"
2 "Respondent trying to provide correct answer, but could not correctly remember his/her activities"
3 "Respondent deliberately reported very long duration activities"
4 "Other"
;
label define labeltuincent
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Non-incentive case"
1 "Regular incentive case, $40 debit card"
;
label define labeltuintdqual
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
label define labeltulngskl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No non-English language assigned"
1 "Spanish language assigned"
2 "Other non-English language assigned"
;
 
label values tr1intst   labeltr1intst;
label values tr2intst   labeltr2intst;
/*
label values trfnlout   labeltrfnlout;
*/
label values trincen2   labeltrincen2;
label values tucpsdp   labeltucpsdp;
label values tudqual2   labeltudqual2;
label values tuincent   labeltuincent;
label values tuintdqual   labeltuintdqual;
label values tulngskl   labeltulngskl;
 
describe, short;

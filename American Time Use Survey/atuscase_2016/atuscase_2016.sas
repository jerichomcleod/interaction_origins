* NOTE: format names are the same as variable names, except for
        variable names that end in a number.  For these a 1 is replaced
        by an A, a 2 is replaced by a B, and so on.
  Edit the infile statement to reference the data file on your computer.
*;
data atuscase_2016;
infile "c:\atuscase_2016.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
 TUCASEID $14
 TR1INTST 8
 TR2INTST 8
 TRFNLOUT $7
 TRINCEN2 8
 TUAVGDUR 8
 TUA_ID $4
 TUCPSDP 8
 TUC_ID $4
 TUDQUAL2 8
 TUINCENT 8
 TUINTDQUAL 8
 TUINTID $4
 TUINTRODATE $8
 TUINTROPANMONTH $2
 TUINTROPANYEAR $4
 TULNGSKL 8
 TUTOTACTNO 8
 TUV_ID $4
;
input
 TUCASEID
 TR1INTST
 TR2INTST
 TRFNLOUT
 TRINCEN2
 TUAVGDUR
 TUA_ID
 TUCPSDP
 TUC_ID
 TUDQUAL2
 TUINCENT
 TUINTDQUAL
 TUINTID
 TUINTRODATE
 TUINTROPANMONTH
 TUINTROPANYEAR
 TULNGSKL
 TUTOTACTNO
 TUV_ID
;
label TR1INTST = "Interview status 1";
label TR2INTST = "Interview status 2";
label TRFNLOUT = "Final outcome code";
label TRINCEN2 = "Incentive expansion case";
label TUAVGDUR = "Average duration of all reported diary activities (in minutes)";
label TUA_ID = "Unique anonymous adjudicator ID";
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TUCPSDP = "Is the ATUS designated person the same as the CPS respondent?";
label TUC_ID = "Unique anonymous coder ID";
label TUDQUAL2 = "Collected from interviewer after interview: why do you think the data should not be used?";
label TUINCENT = "Incentive/non-incentive case";
label TUINTDQUAL = "Collected from interviewer after interview: is there any reason this interview should not be used?";
label TUINTID = "Unique anonymous ATUS interviewer ID";
label TUINTRODATE = "Day of month in which the case was introduced (panel day)";
label TUINTROPANMONTH = "Month in which the case was introduced (panel month)";
label TUINTROPANYEAR = "Year in which the case was introduced (panel year)";
label TULNGSKL = "Non-English language";
label TUTOTACTNO = "Total number of activities reported in diary";
label TUV_ID = "Unique anonymous verifier ID";
run;
 
proc format;
value TR1INTST /*TR1INTST*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Complete interview or sufficient partial"
2 = "Eligible non-interview (refusal, noncontact, other non-interview)"
3 = "Not eligible"
4 = "Unknown eligibility"
;
value TR2INTST /*TR2INTST*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Complete interview"
2 = "Sufficient partial"
3 = "Refusal"
4 = "Noncontact"
5 = "Other non-interview"
6 = "Not eligible"
7 = "Unknown eligibility"
;
value TRINCENB /*altered: TRINCEN2*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Case was not part of incentive expansion"
1 = "Case was part of incentive expansion"
;
value $TRFNLOUT /*TRFNLOUT*/
"-1" = "Blank"
"-2" = "Don't Know"
"-3" = "Refused"
"001.001" = "Complete interview"
"002.001" = "Sufficient partial"
"020.005" = "Not eligible: not used as a regular residence"
"020.007" = "Not eligible: vacant"
"020.011" = "Not eligible: designated person underage"
"020.015" = "Not eligible: designated person not a household member"
"020.022" = "Not eligible: designated person in Armed Forces"
"021.001" = "Other: designated person institutionalized, unavailable through closeout"
"021.002" = "Other: designated person absent, ill, or hospitalized - unavailable through closeout"
"021.003" = "Not eligible: designated person moved out"
"022.002" = "Unknown eligibility: sample unit not found/unreached"
"024.001" = "Other: language barrier"
"025.001" = "Other: unconverted hearing barrier"
"172.001" = "Not eligible: removed from sample"
"172.002" = "Other: invalid input"
"176.001" = "Refusal: Congressional case"
"179.001" = "Refusal: hostile breakoff"
"181.001" = "Refusal: refusal by designated person or gatekeeper"
"183.001" = "Unknown eligibility: exceeded unproductive call maximum"
"188.001" = "Noncontact: incomplete callbacks"
"188.002" = "Noncontact: temporarily unavailable (absent, ill, or hospitalized)"
"188.003" = "Not eligible: temporarily unavailable (institutionalized)"
"191.001" = "Other: unresolved language barrier"
"193.001" = "Unknown eligibility: privacy detectors"
"194.001" = "Noncontact: never contacted, confirmed number"
"195.001" = "Unknown eligibility: never contacted, unconfirmed number"
"199.001" = "Unknown eligibility: never tried, no telephone number household"
"230.001" = "Refusal: diary contains less than 5 activities"
"231.001" = "Refusal: don't know/refuse more than 180 diary minutes"
"232.001" = "Refusal: diary contains less than 5 activities and don't know/refuse more than 180 diary minutes"
"233.001" = "Refusal: other data quality issues"
;
value TUCPSDP /*TUCPSDP*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes, same person"
2 = "No, different person"
;
value TUDQUALB /*altered: TUDQUAL2*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Respondent intentionally providing wrong answer"
2 = "Respondent trying to provide correct answer, but could not correctly remember his/her activities"
3 = "Respondent deliberately reported very long duration activities"
4 = "Other"
;
value TUINCENT /*TUINCENT*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Non-incentive case"
1 = "Incentive case"
;
value TUINDQUL /*altered: TUINTDQUAL*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
;
value TULNGSKL /*TULNGSKL*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No non-English language assigned"
1 = "Spanish language assigned"
2 = "Other non-English language assigned"
;
proc contents data=atuscase_2016; run;

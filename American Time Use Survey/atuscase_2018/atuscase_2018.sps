 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\atuscase_2018.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TR1INTST F8
TR2INTST F8
TRFNLOUT A7
TRINCEN2 F8
TUAVGDUR F8
TUA_ID A4
TUCPSDP F8
TUC_ID A4
TUDQUAL2 F8
TUINCENT F8
TUINTDQUAL F8
TUINTID A4
TUINTRODATE A8
TUINTROPANMONTH A2
TUINTROPANYEAR A4
TULNGSKL F8
TUTOTACTNO F8
TUV_ID A4
.
VARIABLE LABELS
TR1INTST "Interview status 1" /
TR2INTST "Interview status 2" /
TRFNLOUT "Final outcome code" /
TRINCEN2 "Incentive expansion case" /
TUAVGDUR "Average duration of all reported diary activities [in minutes]" /
TUA_ID "Unique anonymous adjudicator ID" /
TUCASEID "ATUS Case ID [14-digit identifier]" /
TUCPSDP "Is the ATUS designated person the same as the CPS respondent?" /
TUC_ID "Unique anonymous coder ID" /
TUDQUAL2 "Collected from interviewer after interview: why do you think the data should not be used?" /
TUINCENT "Incentive-non-incentive case" /
TUINTDQUAL "Collected from interviewer after interview: is there any reason this interview should not be used?" /
TUINTID "Unique anonymous ATUS interviewer ID" /
TUINTRODATE "Day of month in which the case was introduced [panel day]" /
TUINTROPANMONTH "Month in which the case was introduced [panel month]" /
TUINTROPANYEAR "Year in which the case was introduced [panel year]" /
TULNGSKL "Non-English language" /
TUTOTACTNO "Total number of activities reported in diary" /
TUV_ID "Unique anonymous verifier ID" /
.
VALUE LABELS
TR1INTST
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Complete interview or sufficient partial"
2 "Eligible non-interview [refusal, noncontact, other non-interview]"
3 "Not eligible"
4 "Unknown eligibility"
/
TR2INTST
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
/
TRFNLOUT
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
22.002 "Unknown eligibility: sample unit not found-unreached"
24.001 "Other: language barrier"
25.001 "Other: unconverted hearing barrier"
172.001 "Not eligible: removed from sample"
172.002 "Other: invalid input"
176.001 "Refusal: Congressional case"
179.001 "Refusal: hostile breakoff"
181.001 "Refusal: refusal by designated person or gatekeeper"
183.001 "Unknown eligibility: exceeded unproductive call maximum"
188.001 "Noncontact: incomplete callbacks"
188.002 "Noncontact: temporarily unavailable [absent, ill, or hospitalized]"
188.003 "Not eligible: temporarily unavailable [institutionalized]"
191.001 "Other: unresolved language barrier"
193.001 "Unknown eligibility: privacy detectors"
194.001 "Noncontact: never contacted, confirmed number"
195.001 "Unknown eligibility: never contacted, unconfirmed number"
199.001 "Unknown eligibility: never tried, no telephone number household"
230.001 "Refusal: diary contains less than 5 activities"
231.001 "Refusal: don't know-refuse more than 180 diary minutes"
232.001 "Refusal: diary contains less than 5 activities and don't know-refuse more than 180 diary minutes"
233.001 "Refusal: other data quality issues"
/
TRINCEN2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Case was not part of incentive expansion"
1 "Case was part of incentive expansion"
/
TUCPSDP
1 "Yes, same person"
2 "No, different person"
/
TUDQUAL2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Respondent intentionally providing wrong answer"
2 "Respondent trying to provide correct answer, but could not correctly remember his-her activities"
3 "Respondent deliberately reported very long duration activities"
4 "Other"
/
TUINCENT
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Non-incentive case"
1 "Incentive case"
/
TUINTDQUAL
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
/
TULNGSKL
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No non-English language assigned"
1 "Spanish language assigned"
2 "Other non-English language assigned"
/
.
 
CACHE.
EXECUTE.
